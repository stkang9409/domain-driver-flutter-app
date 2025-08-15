// test/contexts/identity/application/register_user_use_case_test.dart
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:my_ddd_app/contexts/identity/domain/aggregates/user.dart';
import 'package:my_ddd_app/contexts/identity/domain/events/domain_event.dart';
import 'package:my_ddd_app/contexts/identity/domain/repositories/user_repository.dart';
import 'package:my_ddd_app/contexts/identity/application/use_cases/register_user_use_case.dart';
import 'package:my_ddd_app/contexts/identity/application/commands/register_user_command.dart';
import 'package:my_ddd_app/shared/domain/events/event_bus.dart';
import 'package:my_ddd_app/shared/domain/failures/failures.dart';

import '../infrastructure/mock_user_repository.dart';

void main() {
  late RegisterUserUseCase useCase;
  late UserRepository mockRepository;
  late EventBus mockEventBus;

  setUp(() {
    mockRepository = MockUserRepository();
    mockEventBus = EventBus();
    useCase = RegisterUserUseCase(mockRepository, mockEventBus);

    mockEventBus.on<UserRegisteredEvent>().listen((event) {
      expect(event.aggregateId, isNotEmpty);
      expect(event.name, isNotEmpty);
    });
  });

  test('should register user successfully', () async {
    // Arrange
    final command = RegisterUserCommand(
      email: 'test@example.com',
      name: 'Test User',
      password: 'password123',
    );

    // Act
    final result = await useCase.execute(command);

    print(result);

    // Assert
    expect(result.isRight(), true);
    expect(result.getRight(), isA<User>());
  });

  test('should return validation failure when email is duplicate', () async {
    // Arrange
    final command = RegisterUserCommand(
      email: 'test@example.com',
      name: 'Test User',
      password: 'password123',
    );

    // Act
    await useCase.execute(command);

    final result = await mockRepository.findByEmail(command.email);

    print(result);

    // Assert
    expect(result.isLeft(), true);
    expect(result.getLeft(), isA<ValidationFailure>());
  });
}
