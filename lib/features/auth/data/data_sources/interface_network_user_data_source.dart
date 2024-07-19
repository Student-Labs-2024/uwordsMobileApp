import 'package:uwords/features/auth/domain/user_auth_dto.dart';

abstract interface class INetworkUserDataSource {
  Future<UserAuthDto> authorizate(
      {required String userEmail,
      required String password,
      required String provider});
  Future<void> registerUser(
      {required String userEmail,
      required String password,
      required DateTime birthDate});
  Future<void> registerUserFromThirdPartyService(
      {required String userEmail,
      required String password,
      required String username,
      required String name,
      required String surname,
      required String avatarUrl,
      required String phoneNumber,
      required String provider,
      required DateTime birthDate});
  Future<UserAuthDto> refreshAccessToken({required UserAuthDto userDto});
}
