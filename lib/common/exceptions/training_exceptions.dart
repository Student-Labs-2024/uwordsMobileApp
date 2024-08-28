class NoEnergyException implements Exception {
  String message;
  NoEnergyException({this.message = "Energy has left"});
}
