import 'package:uwords/features/auth/bloc/auth_enum.dart';
import 'package:uwords/features/database/uwords_database/uwords_database.dart';
import 'package:uwords/features/global/domain/achievement.dart';
import 'package:uwords/features/global/domain/metrics.dart';

class UserAuthDto {
  final int id;
  final String email;
  String username;
  String firstname;
  String lastname;
  String avatarUrl;
  String phoneNumber;
  DateTime birthDate;
  MetricsDto metricsDto;
  final int days;
  int allowedAudioSeconds;
  int allowedVideoSeconds;
  int energy;
  String accessToken;
  final String refreshToken;
  final bool isEducationCompleted;
  final String provider;
  final List<AchievementInfoDto> achievements;

  UserAuthDto({
    required this.id,
    required this.email,
    required this.username,
    required this.firstname,
    required this.lastname,
    required this.avatarUrl,
    required this.phoneNumber,
    required this.birthDate,
    required this.metricsDto,
    required this.days,
    required this.allowedAudioSeconds,
    required this.allowedVideoSeconds,
    required this.energy,
    required this.achievements,
    required this.accessToken,
    required this.refreshToken,
    required this.isEducationCompleted,
    required this.provider,
  });

  factory UserAuthDto.fromDB(
      User user, Metric metric, List<Achievement> achievementsList) {
    return UserAuthDto(
        id: user.id,
        email: user.email,
        username: user.username,
        firstname: user.firstname,
        lastname: user.lastname,
        avatarUrl: user.avatarUrl,
        phoneNumber: user.phoneNumber,
        birthDate: user.birthDate,
        allowedAudioSeconds: user.allowedAudioSeconds,
        allowedVideoSeconds: user.allowedVideoSeconds,
        days: user.days,
        energy: user.energy,
        metricsDto: MetricsDto.fromDB(metric: metric),
        achievements: achievementsList
            .map((achievement) =>
                AchievementInfoDto.fromDB(achievement: achievement))
            .toList(),
        accessToken: user.accessToken,
        refreshToken: user.refreshToken,
        isEducationCompleted: user.isEducationCompleted,
        provider: user.provider);
  }

  factory UserAuthDto.fromJsonAndOtherFields(
      {required String userEmail,
      required AuthorizationProvider provider,
      required Map<String, dynamic> accessMap,
      required Map<String, dynamic> userMap}) {
    return UserAuthDto(
        id: userMap['id'],
        email: userEmail,
        username: userMap['username'] ?? '',
        firstname: userMap['firstname'] ?? '',
        lastname: userMap['lastname'] ?? '',
        avatarUrl: userMap['avatar_url'] ?? '',
        phoneNumber: userMap['phone_number'] ?? '',
        birthDate:
            DateTime.tryParse(userMap['birth_date'] ?? '') ?? DateTime.now(),
        metricsDto: MetricsDto.fromJson(metricMap: userMap['metrics']),
        days: userMap['days'],
        allowedAudioSeconds: userMap['allowed_audio_seconds'],
        allowedVideoSeconds: userMap['allowed_video_seconds'],
        energy: userMap['energy'],
        achievements: (userMap['achievements'] as List<dynamic>?)
                ?.map((achievement) => AchievementInfoDto.fromJson(
                    achievementInfoMap: achievement))
                .toList() ??
            [],
        accessToken: accessMap['access_token'] ?? '',
        refreshToken: accessMap['refresh_token'] ?? '',
        isEducationCompleted: false,
        provider: provider.name);
  }

  void changeAccessToken({required String newAccessToken}) {
    accessToken = newAccessToken;
  }

  void changeUsername({required String newUsername}) {
    username = newUsername;
  }

  void changeFirstname({required String newFirstname}) {
    firstname = newFirstname;
  }

  void changeLastname({required String newLastname}) {
    lastname = newLastname;
  }

  void changeAvatarUrl({required String newAvatarUrl}) {
    avatarUrl = newAvatarUrl;
  }

  void changePhoneNumber({required String newPhoneNumber}) {
    phoneNumber = newPhoneNumber;
  }

  void changeBirthDate({required DateTime newBirthDate}) {
    birthDate = newBirthDate;
  }
}
