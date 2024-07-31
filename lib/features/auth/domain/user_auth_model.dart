class UserAuthModel {
  final int id;
  final String email;
  final String username;
  final String firstname;
  final String lastname;
  final String avatarUrl;
  final String phoneNumber;
  final DateTime birthDate;
  final String accessToken;
  final String refreshToken;
  final bool isEducationCompleted;
  final String provider;

  UserAuthModel(
      {required this.id,
      required this.email,
      required this.username,
      required this.firstname,
      required this.lastname,
      required this.avatarUrl,
      required this.phoneNumber,
      required this.birthDate,
      required this.accessToken,
      required this.refreshToken,
      required this.isEducationCompleted,
      required this.provider});
}
