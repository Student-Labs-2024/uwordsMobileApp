import 'package:uwords/features/auth/bloc/auth_enum.dart';

class NotAuthorizedException implements Exception {
  String message;
  NotAuthorizedException({this.message = "Not authorized"});
}

class NotValidDataForLoginException implements Exception {
  String message;
  NotValidDataForLoginException({this.message = "Check validation rules"});
}

class NotRegisteredException implements Exception {
  String message;
  AuthorizationProvider provider;
  NotRegisteredException(
      {this.message = "User is not registered", required this.provider});
}

class OldAccessTokenException implements Exception {
  String message;
  OldAccessTokenException({this.message = "Need to use refresh token"});
}

class AccessIsBannedException implements Exception {
  String message;
  AccessIsBannedException({this.message = "User had been banned"});
}

class UnknownApiException implements Exception {
  String message;
  UnknownApiException({this.message = "The user was blocked"});
}

class CanceledSignInException implements Exception {
  String message;
  CanceledSignInException({this.message = "Canceled sign in"});
}

class NotRegisteredExceptionBySelfProviderException implements Exception {
  String message;
  NotRegisteredExceptionBySelfProviderException(
      {this.message = "User is not registered by email"});
}

class OldRefreshTokenException implements Exception {
  String message;
  OldRefreshTokenException({this.message = "Need to sign in again"});
}
