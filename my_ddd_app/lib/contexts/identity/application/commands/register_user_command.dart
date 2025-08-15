// lib/contexts/identity/application/commands/register_user_command.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_user_command.freezed.dart';

@freezed
abstract class RegisterUserCommand with _$RegisterUserCommand {
  const factory RegisterUserCommand({
    required String email,
    required String name,
    required String password,
  }) = _RegisterUserCommand;
}
