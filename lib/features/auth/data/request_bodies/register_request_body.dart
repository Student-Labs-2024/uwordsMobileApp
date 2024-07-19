class RegisterRequestBody {
  final String provider;
  final String email;
  final String password;
  final String username;
  final String firstname;
  final String lastname;
  final String avatarUrl;
  final String phoneNumber;
  final DateTime birthDate;

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

  Map<String, dynamic> toJson() {
    return {
      "provider": provider,
      "email": email,
      "password": password,
      "username": username,
      "firstname": firstname,
      "lastname": lastname,
      "avatar_url": avatarUrl,
      "phone_number": phoneNumber,
      "birth_date": birthDate
    };
  }
}
