class RegisterVKRequestBody {
  final String firstname;
  final String lastname;

  RegisterVKRequestBody({
    required this.firstname,
    required this.lastname,
  });

  Map<String, dynamic> toJson() {
    return {
      "firstname": firstname,
      "lastname": lastname,
    };
  }
}

class RegisterRequestBody {
  final String email;
  final String password;
  final String username;
  final DateTime birthDate;
  final String code;

  RegisterRequestBody({
    required this.email,
    required this.password,
    required this.username,
    required this.birthDate,
    required this.code,
  });

  Map<String, dynamic> toJson() {
    return {
      "email": email,
      "password": password,
      "username": username,
      "birth_date": birthDate.toIso8601String(),
      "code": code,
    };
  }
}

class RegisterGoogleRequestBody {
  final String uid;
  RegisterGoogleRequestBody({required this.uid});
  Map<String, dynamic> toJson() {
    return {
      "google_id": uid,
    };
  }
}
