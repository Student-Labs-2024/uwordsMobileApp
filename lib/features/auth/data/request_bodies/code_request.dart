class CheckCodeRequest {
  final String code;
  final String email;
  CheckCodeRequest({required this.code, required this.email});
  Map<String, dynamic> toJson() {
    return {
      "email": email,
      "code": code
    };
  }
}