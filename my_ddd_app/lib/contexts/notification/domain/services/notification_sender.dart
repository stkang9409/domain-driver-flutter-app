// lib/contexts/notification/domain/services/notification_sender.dart
import 'package:fpdart/fpdart.dart';
import 'package:my_ddd_app/shared/domain/failures/failures.dart';
import 'package:my_ddd_app/contexts/notification/domain/entities/push_notification.dart';

abstract class NotificationSender {
  Future<Either<Failure, void>> sendPushNotification(
      PushNotification notification);

  Future<Either<Failure, void>> sendBulkNotifications(
      List<PushNotification> notifications);

  Future<Either<Failure, String>> registerDeviceToken({
    required String userId,
    required String token,
    required DeviceType deviceType,
  });

  Future<Either<Failure, void>> unregisterDeviceToken(String token);
}

enum DeviceType { android, ios, web }
