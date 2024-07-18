part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.initial() = _AuthInitial;
  const factory AuthState.waitingAnswer() = _AuthWaitingAnswer;
  const factory AuthState.registred() = _AuthRegistered;
  const factory AuthState.authorized() = _AuthAuthorised;
  const factory AuthState.failedSignIn() = _AuthFailedSignIn;
  const factory AuthState.failedRegistration() = _AuthFailedRegistration;
  const factory AuthState.notValidMail() = _AuthNotValidMail;
  const factory AuthState.failedAutorization() = _AuthFailedAuthorization;
  const factory AuthState.badPassword() = _AuthBadPassword;
  const factory AuthState.unknownError() = _AuthUnknownError;
}