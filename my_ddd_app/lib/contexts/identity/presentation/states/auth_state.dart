// lib/contexts/identity/presentation/states/auth_state.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_ddd_app/contexts/identity/domain/aggregates/user.dart';

part 'auth_state.freezed.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    @Default(false) bool isLoading,
    @Default(false) bool isAuthenticated,
    User? currentUser,
    String? error,
  }) = _AuthState;
}
