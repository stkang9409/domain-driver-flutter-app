// lib/contexts/identity/domain/events/user_events.dart
import 'package:my_ddd_app/shared/domain/events/domain_event.dart';

class UserRegisteredEvent extends DomainEvent {
  final String email;
  final String name;

  UserRegisteredEvent({
    required String aggregateId,
    required this.email,
    required this.name,
  }) : super(aggregateId: aggregateId);
}
