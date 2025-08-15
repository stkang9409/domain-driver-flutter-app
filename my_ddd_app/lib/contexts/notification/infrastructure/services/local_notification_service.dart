// lib/contexts/notification/infrastructure/services/local_notification_service.dart
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'local_notification_service.g.dart';

@Riverpod(keepAlive: true)
class LocalNotificationService extends _$LocalNotificationService {
  late final FlutterLocalNotificationsPlugin _plugin;

  @override
  Future<void> build() async {
    _plugin = FlutterLocalNotificationsPlugin();
    await _initialize();
  }

  Future<void> _initialize() async {
    const androidSettings =
        AndroidInitializationSettings('@mipmap/ic_launcher');
    const iosSettings = DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
    );

    const settings = InitializationSettings(
      android: androidSettings,
      iOS: iosSettings,
    );

    await _plugin.initialize(
      settings,
      onDidReceiveNotificationResponse: _onNotificationTapped,
    );
  }

  Future<void> showNotification({
    required int id,
    required String title,
    required String body,
    String? payload,
  }) async {
    const androidDetails = AndroidNotificationDetails(
      'default_channel',
      'Default',
      channelDescription: 'Default notification channel',
      importance: Importance.high,
      priority: Priority.high,
    );

    const iosDetails = DarwinNotificationDetails();

    const details = NotificationDetails(
      android: androidDetails,
      iOS: iosDetails,
    );

    await _plugin.show(id, title, body, details, payload: payload);
  }

  void _onNotificationTapped(NotificationResponse response) {
    // 알림 탭 처리
    if (response.payload != null) {
      // 페이로드에 따라 네비게이션 처리
    }
  }
}
