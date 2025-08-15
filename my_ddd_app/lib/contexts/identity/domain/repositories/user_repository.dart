// lib/contexts/identity/domain/repositories/user_repository.dart
import 'package:fpdart/fpdart.dart';
import 'package:my_ddd_app/shared/domain/failures/failures.dart';
import 'package:my_ddd_app/contexts/identity/domain/aggregates/user.dart';

abstract class UserRepository {
  Future<Either<Failure, User>> save(User user);
  Future<Either<Failure, User>> findById(String id);
  Future<Either<Failure, User>> findByEmail(String email);
  Future<Either<Failure, Unit>> delete(String id);
}
