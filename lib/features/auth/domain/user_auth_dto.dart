import 'package:uwords/features/auth/bloc/auth_enum.dart';
import 'package:uwords/features/database/uwords_database/uwords_database.dart';
import 'package:uwords/features/global/domain/achievement_category.dart';
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
  final int allowedAudioSeconds;
  final int allowedVideoSeconds;
  final int energy;
  String accessToken;
  final String refreshToken;
  final bool isEducationCompleted;
  final String provider;
  final List<AchievementCategoryDto> achievementsCategories;

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
    required this.subscriptionType,
    required this.subscriptionAcquisition,
    required this.subscriptionExpired,
    required this.allowedAudioSeconds,
    required this.allowedVideoSeconds,
    required this.energy,
    required this.achievementsCategories,
    required this.accessToken,
    required this.refreshToken,
    required this.isEducationCompleted,
    required this.provider,
  });

  factory UserAuthDto.fromDB(User user, Metric metric,
      Map<AchievementCategory, List<Achievement>> categoryMap) {
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
        energy: user.energy,
        subscriptionType: user.subscriptionType,
        subscriptionAcquisition: user.subscriptionAcquisition,
        subscriptionExpired: user.subscriptionExpired,
        metricsDto: MetricsDto.fromDB(metric: metric),
        achievementsCategories: createAchievementCategoryDtos(categoryMap),
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
        subscriptionType: userMap['subscription_type'],
        subscriptionAcquisition: userMap['subscription_acquisition'] != null
            ? DateTime.tryParse(userMap['subscription_acquisition'])
            : null,
        subscriptionExpired: userMap['subscription_expired'] != null
            ? DateTime.tryParse(userMap['subscription_expired'])
            : null,
        allowedAudioSeconds: userMap['allowed_audio_seconds'],
        allowedVideoSeconds: userMap['allowed_video_seconds'],
        energy: userMap['energy'],
        achievementsCategories: (userMap['achievements'] as List<dynamic>?)
                ?.map((achievementCategory) => AchievementCategoryDto.fromJson(
                    achievementCategoryDtoMap: achievementCategory))
                .toList() ??
            [],
        accessToken: accessMap['access_token'] ?? '',
        refreshToken: accessMap['refresh_token'] ?? '',
        isEducationCompleted: userMap['is_onboarding_complete'] ?? false,
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
      subscriptionAcquisition: userMap['subscription_acquisition'] != null
          ? DateTime.tryParse(userMap['subscription_acquisition'])
          : null,
      subscriptionExpired: userMap['subscription_expired'] != null
          ? DateTime.tryParse(userMap['subscription_expired'])
          : null,
      allowedAudioSeconds: userMap['allowed_audio_seconds'],
      allowedVideoSeconds: userMap['allowed_video_seconds'],
      energy: userMap['energy'],
      achievementsCategories: (userMap['achievements'] as List<dynamic>?)
              ?.map((achievementCategory) => AchievementCategoryDto.fromJson(
                  achievementCategoryDtoMap: achievementCategory))
              .toList() ??
          [],
      isEducationCompleted: userMap['is_onboarding_complete'] ?? false,
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
    List<AchievementCategoryDto>? achievementsCategories,
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
      achievementsCategories:
          achievementsCategories ?? this.achievementsCategories,
    );
  }
}
