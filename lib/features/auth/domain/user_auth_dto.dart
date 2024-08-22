import 'package:uwords/features/auth/bloc/auth_enum.dart';
import 'package:uwords/features/database/uwords_database/uwords_database.dart';
import 'package:uwords/features/global/domain/achievement.dart';
import 'package:uwords/features/global/domain/metrics.dart';

class UserAuthDto {
  final int id;
  final String email;
  final String username;
  final String firstname;
  final String lastname;
  final String avatarUrl;
  final String phoneNumber;
  final DateTime birthDate;
  final MetricsDto metricsDto;
  final int? subscriptionType;
  final DateTime? subscriptionAcquisition;
  final DateTime? subscriptionExpired;
  final int days;
  final int allowedAudioSeconds;
  final int allowedVideoSeconds;
  final int energy;
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
    required this.subscriptionType,
    required this.subscriptionAcquisition,
    required this.subscriptionExpired,
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
        subscriptionType: user.subscriptionType,
        subscriptionAcquisition: user.subscriptionAcquisition,
        subscriptionExpired: user.subscriptionExpired,
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
        subscriptionType: userMap['subscription_type'],
        subscriptionAcquisition:
            DateTime.tryParse(userMap['subscription_acquisition']),
        subscriptionExpired: DateTime.tryParse(userMap['subscription_expired']),
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

  UserAuthDto updateInfoAboutUserByMap(
      {required Map<String, dynamic> userMap, required UserAuthDto user}) {
    return user.copyWith(
      username: userMap['username'] ?? '',
      firstname: userMap['firstname'] ?? '',
      lastname: userMap['lastname'] ?? '',
      avatarUrl: userMap['avatar_url'] ?? '',
      phoneNumber: userMap['phone_number'] ?? '',
      birthDate:
          DateTime.tryParse(userMap['birth_date'] ?? '') ?? DateTime.now(),
      metricsDto: MetricsDto.fromJson(metricMap: userMap['metrics']),
      days: userMap['days'],
      subscriptionType: userMap['subscription_type'],
      subscriptionAcquisition:
          DateTime.tryParse(userMap['subscription_acquisition']),
      subscriptionExpired: DateTime.tryParse(userMap['subscription_expired']),
      allowedAudioSeconds: userMap['allowed_audio_seconds'],
      allowedVideoSeconds: userMap['allowed_video_seconds'],
      energy: userMap['energy'],
      achievements: (userMap['achievements'] as List<dynamic>?)
              ?.map((achievement) =>
                  AchievementInfoDto.fromJson(achievementInfoMap: achievement))
              .toList() ??
          [],
    );
  }

  UserAuthDto copyWith({
    int? id,
    String? email,
    String? username,
    String? firstname,
    String? lastname,
    String? avatarUrl,
    String? phoneNumber,
    DateTime? birthDate,
    MetricsDto? metricsDto,
    int? days,
    int? subscriptionType,
    DateTime? subscriptionAcquisition,
    DateTime? subscriptionExpired,
    int? allowedAudioSeconds,
    int? allowedVideoSeconds,
    int? energy,
    String? accessToken,
    String? refreshToken,
    bool? isEducationCompleted,
    String? provider,
    List<AchievementInfoDto>? achievements,
  }) {
    return UserAuthDto(
      id: id ?? this.id,
      email: email ?? this.email,
      username: username ?? this.username,
      firstname: firstname ?? this.firstname,
      lastname: lastname ?? this.lastname,
      avatarUrl: avatarUrl ?? this.avatarUrl,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      birthDate: birthDate ?? this.birthDate,
      metricsDto: metricsDto ?? this.metricsDto,
      days: days ?? this.days,
      allowedAudioSeconds: allowedAudioSeconds ?? this.allowedAudioSeconds,
      allowedVideoSeconds: allowedVideoSeconds ?? this.allowedVideoSeconds,
      subscriptionType: subscriptionType,
      subscriptionAcquisition: subscriptionAcquisition,
      subscriptionExpired: subscriptionExpired,
      energy: energy ?? this.energy,
      accessToken: accessToken ?? this.accessToken,
      refreshToken: refreshToken ?? this.refreshToken,
      isEducationCompleted: isEducationCompleted ?? this.isEducationCompleted,
      provider: provider ?? this.provider,
      achievements: achievements ?? this.achievements,
    );
  }
}
