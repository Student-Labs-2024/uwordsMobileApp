import 'package:uwords/features/auth/bloc/auth_enum.dart';

class NotAuthorizedException implements Exception {
  String message;
  NotAuthorizedException({this.message = ""});
}

class NotValidDataForLoginException implements Exception {
  String message;
  NotValidDataForLoginException({this.message = ""});
}

class NotRegisteredException implements Exception {
  String message;
  AuthorizationProvider provider;
  NotRegisteredException({this.message = "", required this.provider});
}

class OldAccessException implements Exception {
  String message;
  OldAccessException({this.message = ""});
}

class AccessIsBannedException implements Exception {
  String message;
  AccessIsBannedException({this.message = ""});
}

class UnknownApiException implements Exception{
  String message;
  UnknownApiException({this.message = ""});
}