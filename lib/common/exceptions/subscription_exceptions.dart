class CanNotLoadTariffsException implements Exception {
  String message;
  CanNotLoadTariffsException(
      {this.message = "The list of tariffs was not received"});
}

class CanNotCheckPaymentStatusException implements Exception {
  String message;
  CanNotCheckPaymentStatusException({this.message = "Unknown payment status"});
}

class CanNotGetPaymentLinkException implements Exception {
  String message;
  CanNotGetPaymentLinkException({this.message = "The link was not received"});
}
