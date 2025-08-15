// lib/contexts/notification/domain/repositories/notification_repository.dart
import 'package:fpdart/fpdart.dart';
import 'package:my_ddd_app/contexts/notification/domain/entities/notification_template.dart';
import 'package:my_ddd_app/contexts/notification/domain/services/notification_sender.dart';
import 'package:my_ddd_app/shared/domain/failures/failures.dart';
import 'package:my_ddd_app/contexts/notification/domain/entities/push_notification.dart';
import 'package:my_ddd_app/contexts/notification/domain/aggregates/notification_settings.dart';

abstract class NotificationRepository {
  Future<Either<Failure, PushNotification>> saveNotification(
      PushNotification notification);

  Future<Either<Failure, List<PushNotification>>> getNotifications({
    required String userId,
    int? limit,
    DateTime? after,
  });

  Future<Either<Failure, NotificationSettings>> getSettings(String userId);

  Future<Either<Failure, NotificationSettings>> saveSettings(
      NotificationSettings settings);

  Future<Either<Failure, void>> markAsRead(String notificationId);
}

// lib/contexts/notification/domain/repositories/notification_template_repository.dart
abstract class NotificationTemplateRepository {
  Future<Either<Failure, NotificationTemplate>> getTemplate(String templateId);

  Future<Either<Failure, List<NotificationTemplate>>> getActiveTemplates();

  Future<Either<Failure, NotificationTemplate>> saveTemplate(
      NotificationTemplate template);
}

// lib/contexts/notification/domain/repositories/device_token_repository.dart
abstract class DeviceTokenRepository {
  Future<Either<Failure, void>> saveToken({
    required String userId,
    required String token,
    required DeviceType deviceType,
  });

  Future<Either<Failure, List<String>>> getTokensForUser(String userId);

  Future<Either<Failure, void>> removeToken(String token);
}
