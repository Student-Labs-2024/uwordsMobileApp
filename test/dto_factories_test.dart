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
          allowedAudioSeconds: 0,
          allowedVideoSeconds: 900,
          days: 2,
          energy: 100,
          accessToken: "accessToken",
          refreshToken: "refreshToken",
          isEducationCompleted: false,
          provider: "self",
          isCurrent: false);
      const Metric metricFromDB = Metric(
          id: 1,
          userId: 1,
          alltimeUserwordsAmount: 0,
          alltimeLearnedAmount: 0,
          alltimeLearnedPercents: 100.0,
          alltimeSpeechSeconds: 2,
          alltimeVideoSeconds: 900,
          wordsAmount: 547,
          userwordsAmount: 1040,
          learnedPercents: 30.0,
          speechSeconds: 240,
          videoSeconds: 960);
      const List<Achievement> achievements = [
        Achievement(
            id: 1,
            userId: 1,
            progress: 90,
            progressPercent: 100.0,
            isCompleted: false,
            title: "achievement_title",
            description: "Словарь 1",
            pictureLink: 'pictureLink',
            category: 'category',
            stage: 1,
            target: 10,
            achievementId: 2)
      ];
      var userAuthDtoTest =
          UserAuthDto.fromDB(userFromDB, metricFromDB, achievements);

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
  "username": null,
  "firstname": null,
  "lastname": null,
  "avatar_url": null,
  "latest_study": "2024-08-19T05:28:15.093684",
  "days": 2,
  "phone_number": null,
  "birth_date": "2023-04-01T00:00:00",
  "subscription_type": null,
  "subscription_acquisition": null,
  "subscription_expired": null,
  "allowed_audio_seconds": 1800,
  "allowed_video_seconds": 900,
  "energy": 100,
  "created_at": "2024-08-16T06:58:09.084266",
  "metrics": {
    "user_id": 3,
    "created_date": "2024-08-19T03:53:41.398186Z",
    "alltime_userwords_amount": 403,
    "alltime_learned_amount": 0,
    "alltime_learned_percents": 0.0,
    "alltime_speech_seconds": 0,
    "alltime_video_seconds": 971,
    "words_amount": 547,
    "userwords_amount": 1010,
    "learned_amount": 0,
    "learned_percents": 0.0,
    "speech_seconds": 0,
    "video_seconds": 2794
  },
  "achievements": [
    {
      "id": 72,
      "user_id": 3,
      "progress": 971,
      "progress_percent": 3.0,
      "is_completed": false,
      "achievement": {
        "id": 12,
        "title": "Ютубер 3",
        "description": "Добавь видео на 30000 секунд",
        "pictureLink": null,
        "category": "video_seconds",
        "stage": 3,
        "target": 30000
      }
    }
  ]
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
