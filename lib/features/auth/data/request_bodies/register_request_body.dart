class RegisterRequestBody {
  final String provider;
  final String email;
  final String password;
  final String username;
  final String firstname;
  final String lastname;
  final String avatarUrl;
  final String phoneNumber;
  final String birthDate;

  RegisterRequestBody({
    required this.provider,
    required this.email,
    required this.password,
    required this.username,
    required this.firstname,
    required this.lastname,
    required this.avatarUrl,
    required this.phoneNumber,
    required this.birthDate,
  });
}
