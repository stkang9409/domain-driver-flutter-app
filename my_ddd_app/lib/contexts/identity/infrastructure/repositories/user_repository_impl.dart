// lib/contexts/identity/infrastructure/repositories/user_repository_impl.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:my_ddd_app/contexts/identity/infrastructure/data_sources/user_local_data_source.dart';
import 'package:my_ddd_app/contexts/identity/infrastructure/data_sources/user_remote_data_source.dart';
import 'package:my_ddd_app/contexts/identity/infrastructure/models/user_dto.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:my_ddd_app/shared/domain/failures/failures.dart';
import 'package:my_ddd_app/contexts/identity/domain/aggregates/user.dart';
import 'package:my_ddd_app/contexts/identity/domain/repositories/user_repository.dart';

part 'user_repository_impl.g.dart';

class UserRepositoryImpl implements UserRepository {
  final UserRemoteDataSource _remoteDataSource;
  final UserLocalDataSource _localDataSource;

  UserRepositoryImpl(this._remoteDataSource, this._localDataSource);

  @override
  Future<Either<Failure, User>> save(User user) async {
    try {
      final dto = UserDto(
        id: user.id.value,
        email: user.email.value,
        name: user.name,
        createdAt: user.createdAt,
      );

      final result = await _remoteDataSource.createUser(dto);
      await _localDataSource.cacheUser(result);

      return right(user);
    } catch (e) {
      return left(NetworkFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> delete(String id) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, User>> findByEmail(String email) {
    // TODO: implement findByEmail
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, User>> findById(String id) {
    // TODO: implement findById
    throw UnimplementedError();
  }

  // 다른 메서드 구현...
}

@riverpod
UserRepository userRepository(Ref ref) {
  return UserRepositoryImpl(
    ref.watch(userRemoteDataSourceProvider),
    ref.watch(userLocalDataSourceProvider),
  );
}
