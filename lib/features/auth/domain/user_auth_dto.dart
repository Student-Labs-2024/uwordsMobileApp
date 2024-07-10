import 'package:uwords/features/database/uwords_database/uwords_database.dart';

class UserAuthDto {
  final String email;
  final String accessToken;
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
}
