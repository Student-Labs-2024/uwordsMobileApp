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

class OldAccessToken implements Exception {
  String message;
  OldAccessToken({this.message = ""});
}

class AccessIsBannedException implements Exception {
  String message;
  AccessIsBannedException({this.message = ""});
}

class UnknownApiException implements Exception {
  String message;
  UnknownApiException({this.message = ""});
}

class CanceledSignIn implements Exception {
  String message;
  CanceledSignIn({this.message = ""});
}

class NotRegisteredExceptionBySelfProvider implements Exception {
  String message;
  NotRegisteredExceptionBySelfProvider({this.message = ""});
}

class OldRefreshToken implements Exception {
  String message;
  OldRefreshToken({this.message = ""});
}
