import 'package:fpdart/src/either.dart';
import 'package:fpdart/src/unit.dart';
import 'package:my_ddd_app/contexts/identity/domain/aggregates/user.dart';
import 'package:my_ddd_app/contexts/identity/domain/repositories/user_repository.dart';
import 'package:my_ddd_app/shared/domain/failures/failures.dart';

class MockUserRepository implements UserRepository {
  final _users = <User>[];

  @override
  Future<Either<Failure, Unit>> delete(String id) async {
    _users.removeWhere((user) => user.id.value == id);
    return right(unit);
  }

  @override
  Future<Either<Failure, User>> findByEmail(String email) {
    try {
      return Future.value(
        right(_users.firstWhere((user) => user.email.value == email)),
      );
    } catch (e) {
      return Future.value(left(NotFoundFailure(e.toString())));
    }
  }

  @override
  Future<Either<Failure, User>> findById(String id) {
    try {
      return Future.value(
        right(_users.firstWhere((user) => user.id.value == id)),
      );
    } catch (e) {
      return Future.value(left(NotFoundFailure(e.toString())));
    }
  }

  @override
  Future<Either<Failure, User>> save(User user) {
    _users.add(user);
    return Future.value(right(user));
  }
}
