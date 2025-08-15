// lib/contexts/notification/infrastructure/services/fcm_notification_sender.dart
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:logger/logger.dart';
import 'package:my_ddd_app/contexts/notification/domain/entities/push_notification.dart';
import 'package:my_ddd_app/contexts/notification/domain/failures/failures.dart';
import 'package:my_ddd_app/contexts/notification/domain/repositories/notification_repository.dart';
import 'package:my_ddd_app/contexts/notification/infrastructure/repositories/notification_repository.dart';
import 'package:my_ddd_app/shared/infrastructure/database/supabase_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:my_ddd_app/shared/domain/failures/failures.dart';
import 'package:my_ddd_app/contexts/notification/domain/services/notification_sender.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'fcm_notification_sender.g.dart';

class FCMNotificationSender implements NotificationSender {
  final DeviceTokenRepository _tokenRepository;
  final SupabaseClient _supabase;
  final Logger _logger;

  FCMNotificationSender(
    this._tokenRepository,
    this._supabase,
    this._logger,
  );

  @override
  Future<Either<Failure, void>> sendPushNotification(
      PushNotification notification) async {
    try {
      // 사용자의 모든 디바이스 토큰 가져오기
      final tokensResult =
          await _tokenRepository.getTokensForUser(notification.userId.value);

      return tokensResult.fold(
        (failure) => left(failure),
        (tokens) async {
          if (tokens.isEmpty) {
            _logger.w(
                'No device tokens found for user: ${notification.userId.value}');
            return left(NotificationFailure('No device tokens found for user'));
          }

          // 각 토큰으로 전송
          final futures =
              tokens.map((token) => _sendToToken(token, notification));
          final results = await Future.wait(futures);

          // 성공/실패 카운트
          final successCount = results.where((r) => r.isRight()).length;
          final failureCount = results.where((r) => r.isLeft()).length;

          _logger.i(
              'Push notification sent: $successCount success, $failureCount failure');

          // 하나라도 성공하면 성공으로 간주
          if (successCount > 0) {
            return right(unit);
          } else {
            return left(NotificationFailure('Failed to send to all devices'));
          }
        },
      );
    } catch (e, stackTrace) {
      _logger.e('Error sending push notification',
          error: e, stackTrace: stackTrace);
      return left(NotificationFailure(e.toString()));
    }
  }

  Future<Either<Failure, void>> _sendToToken(
      String token, PushNotification notification) async {
    try {
      // Call Supabase Edge Function to send notification
      final response = await _supabase.functions.invoke(
        'send_notification',
        body: {
          'token': token,
          'notification': {
            'title': notification.title,
            'body': notification.body,
          },
          'data': {
            'notificationId': notification.id.value,
            'type': notification.type.name,
            'priority': notification.priority.name,
            ...notification.data,
          },
          'priority': _mapPriorityToString(notification.priority),
        },
      );

      // Check response
      if (response.status == 200) {
        final data = response.data as Map<String, dynamic>;
        if (data['success'] == true) {
          _logger.i('Notification sent successfully to token: $token');
          return right(unit);
        } else {
          final error = data['error'] as String?;
          _logger.e('Failed to send notification: $error');

          // Handle invalid token
          if (error == 'invalid_token') {
            _logger.w('Removing invalid token: $token');
            await _tokenRepository.removeToken(token);
          }

          return left(NotificationFailure(error ?? 'Unknown error'));
        }
      } else {
        _logger.e('Edge function returned status: ${response.status}');
        return left(NotificationFailure(
            'Failed to send notification: HTTP ${response.status}'));
      }
    } catch (e, stackTrace) {
      _logger.e('Failed to send notification to token: $token',
          error: e, stackTrace: stackTrace);
      return left(NotificationFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> sendBulkNotifications(
      List<PushNotification> notifications) async {
    try {
      // 배치 전송 구현
      _logger.i('Sending bulk notifications: ${notifications.length} items');

      // Group notifications by same content for batch sending
      final Map<String, List<String>> batchGroups = {};

      for (final notification in notifications) {
        final key =
            '${notification.title}|${notification.body}|${notification.priority.name}';

        // Get user's device tokens
        final tokensResult =
            await _tokenRepository.getTokensForUser(notification.userId.value);

        tokensResult.fold(
          (failure) => _logger
              .e('Failed to get tokens for user ${notification.userId.value}'),
          (tokens) {
            if (!batchGroups.containsKey(key)) {
              batchGroups[key] = [];
            }
            batchGroups[key]!.addAll(tokens);
          },
        );
      }

      // Send batch requests for each group
      final List<Either<Failure, void>> results = [];

      for (final entry in batchGroups.entries) {
        final parts = entry.key.split('|');
        final title = parts[0];
        final body = parts[1];
        final priority = parts[2];
        final tokens = entry.value;

        if (tokens.isEmpty) continue;

        try {
          final response = await _supabase.functions.invoke(
            'send_notification',
            body: {
              'tokens': tokens,
              'notification': {
                'title': title,
                'body': body,
              },
              'priority': priority == 'high' || priority == 'urgent'
                  ? 'high'
                  : 'normal',
            },
          );

          if (response.status == 200) {
            final data = response.data as Map<String, dynamic>;
            if (data['success'] == true) {
              _logger.i(
                  'Batch sent: ${data['successCount']} success, ${data['failureCount']} failure');

              // Remove invalid tokens
              final invalidTokens = data['invalidTokens'] as List<dynamic>?;
              if (invalidTokens != null && invalidTokens.isNotEmpty) {
                for (final token in invalidTokens) {
                  await _tokenRepository.removeToken(token as String);
                }
              }

              results.add(right(unit));
            } else {
              results.add(left(NotificationFailure('Batch send failed')));
            }
          } else {
            results.add(left(NotificationFailure('HTTP ${response.status}')));
          }
        } catch (e) {
          _logger.e('Batch send error', error: e);
          results.add(left(NotificationFailure(e.toString())));
        }
      }

      final successCount = results.where((r) => r.isRight()).length;
      final failureCount = results.where((r) => r.isLeft()).length;

      _logger.i(
          'Bulk send complete: $successCount success, $failureCount failure');

      if (successCount > 0) {
        return right(unit);
      } else {
        return left(NotificationFailure('All bulk notifications failed'));
      }
    } catch (e, stackTrace) {
      _logger.e('Error in bulk send', error: e, stackTrace: stackTrace);
      return left(NotificationFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, String>> registerDeviceToken({
    required String userId,
    required String token,
    required DeviceType deviceType,
  }) async {
    try {
      _logger.i(
          'Registering device token for user: $userId, type: ${deviceType.name}');

      final result = await _tokenRepository.saveToken(
        userId: userId,
        token: token,
        deviceType: deviceType,
      );

      return result.fold(
        (failure) {
          _logger.e('Failed to register device token', error: failure);
          return left(failure);
        },
        (_) {
          _logger.i('Device token registered successfully');
          return right(token);
        },
      );
    } catch (e, stackTrace) {
      _logger.e('Error registering device token',
          error: e, stackTrace: stackTrace);
      return left(NotificationFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> unregisterDeviceToken(String token) async {
    try {
      _logger.i('Unregistering device token');
      final result = await _tokenRepository.removeToken(token);

      return result.fold(
        (failure) {
          _logger.e('Failed to unregister device token', error: failure);
          return left(failure);
        },
        (_) {
          _logger.i('Device token unregistered successfully');
          return right(unit);
        },
      );
    } catch (e, stackTrace) {
      _logger.e('Error unregistering device token',
          error: e, stackTrace: stackTrace);
      return left(NotificationFailure(e.toString()));
    }
  }

  /// Maps NotificationPriority to FCM priority string
  String _mapPriorityToString(NotificationPriority priority) {
    switch (priority) {
      case NotificationPriority.urgent:
        return 'high';
      case NotificationPriority.high:
        return 'high';
      case NotificationPriority.normal:
        return 'normal';
      case NotificationPriority.low:
        return 'normal';
    }
  }

  /// Initialize FCM and request permissions
  static Future<String?> initializeAndGetToken() async {
    final messaging = FirebaseMessaging.instance;

    // Request permission (iOS)
    final settings = await messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized ||
        settings.authorizationStatus == AuthorizationStatus.provisional) {
      // Get the token
      final token = await messaging.getToken();
      return token;
    }

    return null;
  }

  /// Setup message handlers for foreground/background messages
  static void setupMessageHandlers() {
    // Foreground messages
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      // Handle foreground message
      // You might want to show a local notification here
    });

    // Background messages (when app is in background but not terminated)
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      // Handle notification tap when app is in background
    });
  }
}

@riverpod
Logger fcmLogger(Ref ref) {
  return Logger(
    printer: PrettyPrinter(
      methodCount: 0,
      colors: true,
      printEmojis: true,
      dateTimeFormat: DateTimeFormat.onlyTimeAndSinceStart,
    ),
  );
}

@riverpod
NotificationSender notificationSender(Ref ref) {
  return FCMNotificationSender(
    ref.watch(deviceTokenRepositoryProvider),
    ref.watch(supabaseProvider),
    ref.watch(fcmLoggerProvider),
  );
}
