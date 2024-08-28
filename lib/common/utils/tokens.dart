import 'package:uwords/common/exceptions/login_exceptions.dart';
import 'package:uwords/common/utils/jwt.dart';
import 'package:uwords/features/auth/data/repository/interface_user_repository.dart';

Future<void> checkTokenExpirationAndUpdateIfNeed(
    {required String accessToken,
    required IUserRepository userRepository}) async {
  if (isTokenExpired(token: accessToken)) {
    try {
      accessToken = await userRepository.refreshAccessToken();
    } on OldRefreshTokenException {
      rethrow;
    }
  }
}
