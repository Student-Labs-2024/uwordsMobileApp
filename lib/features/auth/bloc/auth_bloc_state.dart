part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState{
  const factory AuthState.initial() = _AuthInitial;
  const factory AuthState.waitingAnswer() = _AuthWaitingAnswer;
  const factory AuthState.registred() = _AuthRegistered;
  const factory AuthState.authorized() = _AuthAuthorised;
  const factory AuthState.failedSignIn() = _AuthFailedSignIn;
  const factory AuthState.failedRegisteration() = _AuthFailedRegistration;
}