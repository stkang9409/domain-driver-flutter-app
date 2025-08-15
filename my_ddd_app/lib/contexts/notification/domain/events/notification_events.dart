// lib/contexts/notification/domain/events/notification_events.dart
import 'package:my_ddd_app/shared/domain/events/domain_event.dart';

class NotificationSentEvent extends DomainEvent {
  final String notificationId;
  final String userId;
  final String title;

  NotificationSentEvent({
    required this.notificationId,
    required this.userId,
    required this.title,
  }) : super(aggregateId: notificationId);
}

class NotificationFailedEvent extends DomainEvent {
  final String notificationId;
  final String userId;
  final String reason;

  NotificationFailedEvent({
    required this.notificationId,
    required this.userId,
    required this.reason,
  }) : super(aggregateId: notificationId);
}

class NotificationSettingsUpdatedEvent extends DomainEvent {
  final String userId;
  final Map<String, bool> changes;

  NotificationSettingsUpdatedEvent({
    required this.userId,
    required this.changes,
  }) : super(aggregateId: userId);
}
