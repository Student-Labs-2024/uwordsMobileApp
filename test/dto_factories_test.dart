import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:uwords/features/auth/bloc/auth_providers.dart';
import 'package:uwords/features/auth/domain/user_auth_dto.dart';
import 'package:uwords/features/database/uwords_database/uwords_database.dart';

void main() {
  group('UserAuthDtoTests', () {
    test("DTO factory from DB method", () {
      const User userFromDB = User(
          id: 1,
          email: "example@email.com",
          accessToken: "accessToken",
          refreshToken: "refreshToken",
          isEducationCompleted: false,
          provider: "self",
          isCurrent: false);

      var userAuthDtoTest = UserAuthDto.fromDB(userFromDB);

      expect(userAuthDtoTest, isA<UserAuthDto>());
      expect(userAuthDtoTest.email, equals("example@email.com"));
      expect(userAuthDtoTest.accessToken, equals("accessToken"));
      expect(userAuthDtoTest.refreshToken, equals("refreshToken"));
      expect(userAuthDtoTest.isEducationCompleted, isFalse);
      expect(userAuthDtoTest.provider, equals("self"));
    });

    test("DTO factory from DB method", () {
      const String email = "example@email.com";
      const String password = "a)192929kwAA";
      const AuthorizationProvider provider = AuthorizationProvider.self;
      const String jsonString = '''
  {
    "email": "example@email.com",
    "access_token": "accessToken",
    "refresh_token": "refreshToken",
    "provider": "self"
  }
  ''';

      final jsonData = jsonDecode(jsonString);
      var userAuthDtoTest = UserAuthDto.fromJsonAndOtherFields(
          userEmail: email,
          password: password,
          provider: provider,
          map: jsonData);

      expect(userAuthDtoTest, isA<UserAuthDto>());
      expect(userAuthDtoTest.email, equals(email));
      expect(userAuthDtoTest.accessToken, equals("accessToken"));
      expect(userAuthDtoTest.refreshToken, equals("refreshToken"));
      expect(userAuthDtoTest.isEducationCompleted, isFalse);
      expect(userAuthDtoTest.provider, equals(provider.name));
    });
  });
}
