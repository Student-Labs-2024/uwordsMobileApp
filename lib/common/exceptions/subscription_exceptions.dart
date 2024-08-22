class CanNotLoadTariffs implements Exception {
  String message;
  CanNotLoadTariffs({this.message = ""});
}

class CanNotCheckPaymentStatus implements Exception {
  String message;
  CanNotCheckPaymentStatus({this.message = ""});
}

class CanNotGetPaymentLink implements Exception {
  String message;
  CanNotGetPaymentLink({this.message = ""});
}
