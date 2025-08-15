// lib/contexts/identity/application/use_cases/register_user_use_case.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:my_ddd_app/contexts/identity/infrastructure/repositories/user_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:my_ddd_app/shared/domain/failures/failures.dart';
import 'package:my_ddd_app/shared/domain/events/event_bus.dart';
import 'package:my_ddd_app/contexts/identity/domain/aggregates/user.dart';
import 'package:my_ddd_app/contexts/identity/domain/repositories/user_repository.dart';
import 'package:my_ddd_app/contexts/identity/application/commands/register_user_command.dart';

part 'register_user_use_case.g.dart';

class RegisterUserUseCase {
  final UserRepository _repository;
  final EventBus _eventBus;

  RegisterUserUseCase(this._repository, this._eventBus);

  Future<Either<Failure, User>> execute(RegisterUserCommand command) async {
    try {
      // 중복 체크
      final existingUser = await _repository.findByEmail(command.email);
      if (existingUser.isRight()) {
        return left(ValidationFailure('Email already exists'));
      }

      // 사용자 생성
      final user = User.create(
        email: command.email,
        name: command.name,
      );

      // 저장
      final result = await _repository.save(user);

      // 이벤트 발행
      result.fold(
        (_) => null,
        (savedUser) {
          for (final event in savedUser.domainEvents) {
            _eventBus.publish(event);
          }
        },
      );

      return result;
    } catch (e) {
      return left(ValidationFailure(e.toString()));
    }
  }
}

@riverpod
RegisterUserUseCase registerUserUseCase(Ref ref) {
  return RegisterUserUseCase(
    ref.watch(userRepositoryProvider),
    ref.watch(eventBusProvider),
  );
}
