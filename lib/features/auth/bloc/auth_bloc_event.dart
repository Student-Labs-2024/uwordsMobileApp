part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signInWithVK() = _SignInWithVK;
  const factory AuthEvent.signInWithGoogle() = _SignInWithGoogle;
  const factory AuthEvent.registerUser(
      {required String emailAddress, required String password, required DateTime birthDate}) = _RegisterUser;
  const factory AuthEvent.signInWithMailPassword(
      {required String emailAddress,
      required String password}) = _SignInWithMailPassword;
  const factory AuthEvent.logOut() = _LogOut;
  const factory AuthEvent.requestCode({required String email}) = _RequestCode;
  const factory AuthEvent.checkCode(
      {required String email, required String code}) = _CheckCode;
}
