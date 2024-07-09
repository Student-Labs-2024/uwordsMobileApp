class UserModel {
  final String email;
  final String accessToken;
  final String refreshToken;
  final bool isEducationCompleted;

  UserModel(
      {required this.email,
      required this.accessToken,
      required this.refreshToken,
      required this.isEducationCompleted});
}
