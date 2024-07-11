import 'package:uwords/common/utils/jwt.dart';
import 'package:uwords/features/auth/data/repository/interface_user_repository.dart';

Future<void> checkTokenExpirationAndUpdateIfNeed(
    {required String accessToken,
    required IUserRepository userRepository}) async {
  if (isTokenExpired(accessToken: accessToken)) {
    accessToken = await userRepository.refreshAccessToken();
  }
}
