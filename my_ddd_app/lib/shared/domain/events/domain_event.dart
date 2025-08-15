// lib/shared/domain/events/domain_event.dart
abstract class DomainEvent {
  final DateTime occurredAt;
  final String aggregateId;

  DomainEvent({
    required this.aggregateId,
    DateTime? occurredAt,
  }) : occurredAt = occurredAt ?? DateTime.now();
}
