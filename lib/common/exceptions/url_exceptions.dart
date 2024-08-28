class CanNotOpenUrlException implements Exception {
  String message;
  CanNotOpenUrlException({this.message = "Can not launch url"});
}
