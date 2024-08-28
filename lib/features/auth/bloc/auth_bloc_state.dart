part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.initial() = _AuthInitialState;
  const factory AuthState.signInScreen() = _AuthSignInScreenState;

  const factory AuthState.waitingAnswer() = _AuthWaitingAnswerState;

  const factory AuthState.success(AuthSuccess success) = _AuthSuccessState;
  const factory AuthState.failed(AuthError error) = _AuthFailedState;
}
