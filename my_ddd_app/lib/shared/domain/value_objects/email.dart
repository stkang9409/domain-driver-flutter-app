// lib/shared/domain/value_objects/email.dart
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'email.freezed.dart';

@freezed
abstract class Email with _$Email {
  const Email._();

  const factory Email(String value) = _Email;

  static Either<String, Email> create(String input) {
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (input.isEmpty) {
      return left('Email cannot be empty');
    }

    if (!emailRegex.hasMatch(input)) {
      return left('Invalid email format');
    }

    return right(Email(input));
  }
}
