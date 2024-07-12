class LoginRequestBody {
  final String provider;
  final String email;
  final String password;

  LoginRequestBody(
      {required this.provider, required this.email, required this.password});

  Map<String, dynamic> toJson() {
    return {
      "provider": provider,
      "email": email,
      "password": password,
    };
  }
}
