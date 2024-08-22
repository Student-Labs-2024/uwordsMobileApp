import 'package:uwords/features/auth/domain/user_auth_dto.dart';
import 'package:uwords/features/global/domain/achievement.dart';
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
  final int days;
  int allowedAudioSeconds;
  int allowedVideoSeconds;
  int energy;
  String accessToken;
  final List<AchievementInfoDto> achievements;

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
      required this.days,
      required this.allowedAudioSeconds,
      required this.allowedVideoSeconds,
      required this.accessToken,
      required this.energy,
      required this.achievements});
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
        days: userAuthDto.days,
        allowedAudioSeconds: userAuthDto.allowedAudioSeconds,
        allowedVideoSeconds: userAuthDto.allowedVideoSeconds,
        accessToken: userAuthDto.accessToken,
        energy: userAuthDto.energy,
        achievements: userAuthDto.achievements);
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
