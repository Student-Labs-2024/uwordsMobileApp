class UserAuthModel {
  final String email;
  final String accessToken;
  final String refreshToken;
  final bool isEducationCompleted;
  final String provider;

  UserAuthModel(
      {required this.email,
      required this.accessToken,
      required this.refreshToken,
      required this.isEducationCompleted,
      required this.provider});
}
