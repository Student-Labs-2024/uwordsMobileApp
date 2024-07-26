part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.initial() = _AuthInitial;
  const factory AuthState.signInScreen() = _AuthSignInScreen;

  const factory AuthState.waitingAnswer() = _AuthWaitingAnswer;

  const factory AuthState.success(AuthSuccess success) = _AuthSuccess;
  const factory AuthState.failed(AuthError error) = _AuthFailed;
}
