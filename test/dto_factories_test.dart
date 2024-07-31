import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:uwords/features/auth/bloc/auth_enum.dart';
import 'package:uwords/features/auth/domain/user_auth_dto.dart';
import 'package:uwords/features/database/uwords_database/uwords_database.dart';

void main() {
  group('UserAuthDtoTests', () {
    test("DTO factory from DB method", () {
      final DateTime dateTime = DateTime.parse("2023-05-05T10:30:45.999999");
      final User userFromDB = User(
          id: 1,
          email: "example@email.com",
          username: 'example',
          firstname: '',
          lastname: '',
          avatarUrl: '',
          phoneNumber: '',
          birthDate: dateTime,
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

    test("DTO factory from JSON method", () {
      const String email = "example@email.com";
      const AuthorizationProvider provider = AuthorizationProvider.self;
      const int id = 1;
      const String jsonString = '''
  {
    "email": "$email",
    "access_token": "accessToken",
    "refresh_token": "refreshToken",
    "provider": "self"
  }
  ''';
      const String aboutMeString = '''
  {
  "id": $id,
  "email": "$email",
  "provider": "email",
  "google_id": null,
  "vk_id": null,
  "username": "example",
  "firstname": null,
  "lastname": null,
  "avatar_url": null,
  "latest_study": null,
  "days": 0,
  "phone_number": null,
  "birth_date": "2023-05-05T10:30:45.999999",
  "created_at": "2024-07-31T06:01:35.210728"
  }
  ''';

      final jsonData = jsonDecode(jsonString);
      final aboutMeData = jsonDecode(aboutMeString);
      var userAuthDtoTest = UserAuthDto.fromJsonAndOtherFields(
          userMap: aboutMeData,
          userEmail: email,
          provider: provider,
          accessMap: jsonData);

      expect(userAuthDtoTest, isA<UserAuthDto>());
      expect(userAuthDtoTest.id, equals(id));
      expect(userAuthDtoTest.email, equals(email));
      expect(userAuthDtoTest.accessToken, equals("accessToken"));
      expect(userAuthDtoTest.refreshToken, equals("refreshToken"));
      expect(userAuthDtoTest.isEducationCompleted, isFalse);
      expect(userAuthDtoTest.provider, equals(provider.name));
    });
  });
}
