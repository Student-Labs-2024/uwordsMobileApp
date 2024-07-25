part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.requestCode(
      {required DateTime birthDate,
      String? nickname,
      required String emailAddress,
      required String password}) = _RequestCode;
  const factory AuthEvent.registerUser({
    required String code,
  }) = _RegisterUser;

  const factory AuthEvent.signInWithVK() = _SignInWithVK;
  const factory AuthEvent.signInWithGoogle() = _SignInWithGoogle;

  const factory AuthEvent.signInWithMailPassword(
      {required String emailAddress,
      required String password}) = _SignInWithMailPassword;

  const factory AuthEvent.logOut() = _LogOut;
}
