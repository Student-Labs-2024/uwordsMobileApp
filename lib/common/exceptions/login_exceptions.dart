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
  NotRegisteredException({this.message = ""});
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