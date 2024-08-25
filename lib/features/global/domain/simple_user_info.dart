import 'package:uwords/features/auth/domain/user_auth_dto.dart';
import 'package:uwords/features/global/domain/achievement_category.dart';
import 'package:uwords/features/global/domain/metrics.dart';

class SimpleUserInfo {
  final int id;
  final String email;
  String username;
  String firstname;
  String lastname;
  String avatarUrl;
  String phoneNumber;
  DateTime birthDate;
  MetricsDto metricsDto;
  int? subscriptionType;
  DateTime? subscriptionAcquisition;
  DateTime? subscriptionExpired;
  int allowedAudioSeconds;
  int allowedVideoSeconds;
  int energy;
  String accessToken;
  final List<AchievementCategoryDto> achievements;
  bool isEducationCompleted;

  SimpleUserInfo(
      {required this.id,
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
      required this.accessToken,
      required this.energy,
      required this.achievements,
      required this.isEducationCompleted});
  factory SimpleUserInfo.fromUserAuthDto({required UserAuthDto userAuthDto}) {
    return SimpleUserInfo(
        id: userAuthDto.id,
        email: userAuthDto.email,
        username: userAuthDto.username,
        firstname: userAuthDto.firstname,
        lastname: userAuthDto.lastname,
        avatarUrl: userAuthDto.avatarUrl,
        phoneNumber: userAuthDto.phoneNumber,
        birthDate: userAuthDto.birthDate,
        metricsDto: userAuthDto.metricsDto,
        subscriptionType: userAuthDto.subscriptionType,
        subscriptionAcquisition: userAuthDto.subscriptionAcquisition,
        subscriptionExpired: userAuthDto.subscriptionExpired,
        allowedAudioSeconds: userAuthDto.allowedAudioSeconds,
        allowedVideoSeconds: userAuthDto.allowedVideoSeconds,
        accessToken: userAuthDto.accessToken,
        energy: userAuthDto.energy,
        achievements: userAuthDto.achievementsCategories,
        isEducationCompleted: userAuthDto.isEducationCompleted);
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
