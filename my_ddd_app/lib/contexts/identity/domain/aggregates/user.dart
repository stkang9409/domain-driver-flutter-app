// lib/contexts/identity/domain/aggregates/user.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_ddd_app/contexts/identity/domain/events/domain_event.dart';
import 'package:my_ddd_app/shared/domain/events/domain_event.dart';
import 'package:my_ddd_app/shared/domain/failures/failures.dart';
import 'package:my_ddd_app/shared/domain/value_objects/email.dart';
import 'package:my_ddd_app/shared/domain/value_objects/uuid.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User {
  const User._();

  const factory User({
    required Uuid id,
    required Email email,
    required String name,
    required DateTime createdAt,
    @Default([]) List<DomainEvent> domainEvents,
  }) = _User;

  static User create({
    required String email,
    required String name,
  }) {
    final userId = Uuid.generate();
    final userEmail = Email.create(email).fold(
      (error) => throw ValidationFailure(error),
      (email) => email,
    );

    return User(
      id: userId,
      email: userEmail,
      name: name,
      createdAt: DateTime.now(),
      domainEvents: [
        UserRegisteredEvent(
          aggregateId: userId.value,
          email: email,
          name: name,
        ),
      ],
    );
  }
}
