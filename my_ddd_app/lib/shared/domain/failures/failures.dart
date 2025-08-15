// lib/shared/domain/failures/failures.dart
abstract class Failure {
  final String message;
  final String? code;

  const Failure(this.message, [this.code]);
}

class NetworkFailure extends Failure {
  const NetworkFailure([String message = 'Network error']) : super(message);
}

class CacheFailure extends Failure {
  const CacheFailure([String message = 'Cache error']) : super(message);
}

class ValidationFailure extends Failure {
  const ValidationFailure(String message) : super(message);
}

class NotFoundFailure extends Failure {
  const NotFoundFailure([String message = 'Not found']) : super(message);
}
