import 'package:uwords/features/auth/domain/user_mixins.dart';
import 'package:uwords/features/database/uwords_database/uwords_database.dart';

class UserAuthDto with ThirdPartyServiceMixin {
  final String email;
  final String accessToken;
  final String refreshToken;
  final bool isEducationCompleted;

  UserAuthDto({
    required this.email,
    required this.accessToken,
    required this.refreshToken,
    required this.isEducationCompleted,
  });

  UserAuthDto.withThirdPartyService(
      {required this.email,
      required this.accessToken,
      required this.refreshToken,
      required this.isEducationCompleted,
      required String uName,
      required String uSurName,
      required String uPhotoURL,
      required String providerUid});

  factory UserAuthDto.fromDB(User user) {
    return UserAuthDto(
        email: user.email,
        accessToken: user.accessToken,
        refreshToken: user.refreshToken,
        isEducationCompleted: user.isEducationCompleted);
  }
}
