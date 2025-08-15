// lib/contexts/notification/domain/aggregates/notification_settings.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_ddd_app/shared/domain/value_objects/uuid.dart';

part 'notification_settings.freezed.dart';

@freezed
abstract class NotificationSettings with _$NotificationSettings {
  const NotificationSettings._();

  const factory NotificationSettings({
    required Uuid userId,
    required bool pushEnabled,
    required bool emailEnabled,
    required bool smsEnabled,
    required Map<NotificationType, bool> typePreferences,
    required Map<String, dynamic> metadata,
    String? fcmToken,
    String? apnsToken,
    required DateTime updatedAt,
  }) = _NotificationSettings;

  factory NotificationSettings.createDefault(Uuid userId) {
    return NotificationSettings(
      userId: userId,
      pushEnabled: true,
      emailEnabled: true,
      smsEnabled: false,
      typePreferences: {
        NotificationType.marketing: true,
        NotificationType.transactional: true,
        NotificationType.reminder: true,
        NotificationType.social: true,
      },
      metadata: {},
      updatedAt: DateTime.now(),
    );
  }

  NotificationSettings updatePushToken(String? token) {
    return copyWith(
      fcmToken: token,
      updatedAt: DateTime.now(),
    );
  }

  NotificationSettings updatePreferences({
    bool? pushEnabled,
    bool? emailEnabled,
    Map<NotificationType, bool>? typePreferences,
  }) {
    return copyWith(
      pushEnabled: pushEnabled ?? this.pushEnabled,
      emailEnabled: emailEnabled ?? this.emailEnabled,
      typePreferences: typePreferences ?? this.typePreferences,
      updatedAt: DateTime.now(),
    );
  }

  bool canReceiveNotification(NotificationType type) {
    if (!pushEnabled) return false;
    return typePreferences[type] ?? false;
  }
}

enum NotificationType {
  marketing,
  transactional,
  reminder,
  social,
  system,
}
