part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.initial() = _AuthInitial;
  const factory AuthState.sendedCode() = _AuthSendedCode;
  const factory AuthState.signInScreen() = _AuthSignInScreen;
  const factory AuthState.authorized() = _AuthAuthorised;

  const factory AuthState.waitingAnswer() = _AuthWaitingAnswer;

  const factory AuthState.failed(AuthError error) = _AuthFailed;
}
