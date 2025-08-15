// lib/contexts/identity/presentation/notifiers/auth_notifier.dart
import 'package:my_ddd_app/contexts/identity/application/commands/register_user_command.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:my_ddd_app/contexts/identity/presentation/states/auth_state.dart';
import 'package:my_ddd_app/contexts/identity/application/use_cases/register_user_use_case.dart';

part 'auth_notifier.g.dart';

@riverpod
class AuthNotifier extends _$AuthNotifier {
  @override
  AuthState build() => const AuthState();

  Future<void> register({
    required String email,
    required String name,
    required String password,
  }) async {
    state = state.copyWith(isLoading: true, error: null);

    final useCase = ref.read(registerUserUseCaseProvider);
    final result = await useCase.execute(
      RegisterUserCommand(
        email: email,
        name: name,
        password: password,
      ),
    );

    result.fold(
      (failure) => state = state.copyWith(
        isLoading: false,
        error: failure.message,
      ),
      (user) => state = state.copyWith(
        isLoading: false,
        isAuthenticated: true,
        currentUser: user,
      ),
    );
  }
}
