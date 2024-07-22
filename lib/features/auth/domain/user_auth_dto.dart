import 'package:uwords/features/auth/bloc/auth_providers.dart';
import 'package:uwords/features/database/uwords_database/uwords_database.dart';

class UserAuthDto {
  final String email;
  String accessToken;
  final String refreshToken;
  final bool isEducationCompleted;
  final String provider;

  UserAuthDto({
    required this.email,
    required this.accessToken,
    required this.refreshToken,
    required this.isEducationCompleted,
    required this.provider,
  });

  factory UserAuthDto.fromDB(User user) {
    return UserAuthDto(
        email: user.email,
        accessToken: user.accessToken,
        refreshToken: user.refreshToken,
        isEducationCompleted: user.isEducationCompleted,
        provider: user.provider);
  }

  factory UserAuthDto.fromJsonAndOtherFields(
      {required String userEmail,
      required AuthorizationProvider provider,
      required Map<String, dynamic> map}) {
    return UserAuthDto(
        email: userEmail,
        accessToken: map['access_token'] ?? '',
        refreshToken: map['refresh_token'] ?? '',
        isEducationCompleted: false,
        provider: provider.name);
  }

  void changeAccessToken({required String newAccessToken}) {
    accessToken = newAccessToken;
  }
}
