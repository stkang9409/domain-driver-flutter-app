// lib/contexts/notification/domain/entities/push_notification.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_ddd_app/contexts/notification/domain/aggregates/notification_settings.dart';
import 'package:my_ddd_app/shared/domain/value_objects/uuid.dart';

part 'push_notification.freezed.dart';

@freezed
abstract class PushNotification with _$PushNotification {
  const PushNotification._();

  const factory PushNotification({
    required Uuid id,
    required Uuid userId,
    required String title,
    required String body,
    required NotificationType type,
    required NotificationPriority priority,
    required Map<String, dynamic> data,
    required DateTime scheduledAt,
    DateTime? sentAt,
    DateTime? readAt,
    required NotificationStatus status,
  }) = _PushNotification;

  factory PushNotification.create({
    required Uuid userId,
    required String title,
    required String body,
    required NotificationType type,
    Map<String, dynamic>? data,
    NotificationPriority priority = NotificationPriority.normal,
    DateTime? scheduledAt,
  }) {
    return PushNotification(
      id: Uuid.generate(),
      userId: userId,
      title: title,
      body: body,
      type: type,
      priority: priority,
      data: data ?? {},
      scheduledAt: scheduledAt ?? DateTime.now(),
      status: NotificationStatus.pending,
    );
  }

  PushNotification markAsSent() {
    return copyWith(
      status: NotificationStatus.sent,
      sentAt: DateTime.now(),
    );
  }

  PushNotification markAsRead() {
    return copyWith(
      status: NotificationStatus.read,
      readAt: DateTime.now(),
    );
  }

  PushNotification markAsFailed(String reason) {
    return copyWith(
      status: NotificationStatus.failed,
      data: {...data, 'failureReason': reason},
    );
  }
}

enum NotificationPriority { low, normal, high, urgent }

enum NotificationStatus { pending, sent, delivered, read, failed }
