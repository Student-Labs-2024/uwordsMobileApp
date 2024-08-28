part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.requestCode(
      {required DateTime birthDate,
      String? nickname,
      required String emailAddress,
      required String password}) = _RequestCodeEvent;
  const factory AuthEvent.registerUser({
    required String code,
  }) = _RegisterUserEvent;

  const factory AuthEvent.signInWithVK() = _SignInWithVKEvent;
  const factory AuthEvent.signInWithGoogle() = _SignInWithGoogleEvent;

  const factory AuthEvent.signInWithMailPassword(
      {required String emailAddress,
      required String password}) = _SignInWithMailPasswordEvent;

  const factory AuthEvent.logOut() = _LogOutEvent;

  const factory AuthEvent.changeDataForRegister() = _ChangeDataForRegisterEvent;

  const factory AuthEvent.autoLogin() = _AutoLoginEvent;
}
