import 'package:uwords/features/auth/bloc/auth_enum.dart';
import 'package:uwords/features/database/uwords_database/uwords_database.dart';

class UserAuthDto {
  final int id;
  final String email;
  String username;
  String firstname;
  String lastname;
  String avatarUrl;
  String phoneNumber;
  DateTime birthDate;
  String accessToken;
  final String refreshToken;
  final bool isEducationCompleted;
  final String provider;

  UserAuthDto({
    required this.id,
    required this.email,
    required this.username,
    required this.firstname,
    required this.lastname,
    required this.avatarUrl,
    required this.phoneNumber,
    required this.birthDate,
    required this.accessToken,
    required this.refreshToken,
    required this.isEducationCompleted,
    required this.provider,
  });

  factory UserAuthDto.fromDB(User user) {
    return UserAuthDto(
        id: user.id,
        email: user.email,
        username: user.username,
        firstname: user.firstname,
        lastname: user.lastname,
        avatarUrl: user.avatarUrl,
        phoneNumber: user.phoneNumber,
        birthDate: user.birthDate,
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
