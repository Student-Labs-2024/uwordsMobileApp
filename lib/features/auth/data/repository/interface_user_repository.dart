import 'package:uwords/features/auth/domain/user_auth_dto.dart';

abstract interface class IUserRepository {
  void localLogOut();
  Future<bool> registerUser(
      {required String emailAddress, required String password});
  Future<void> refreshAccessToken();
  Future<bool> authorizate(
      {required String emailAddress,
      required String password,
      required String provider});
  Future<bool> registerUserFromThirdPartyService(
      {required String email,
      required String password,
      required String username,
      required String name,
      required String surname,
      required String avatarUrl,
      required String phoneNumber,
      required String provider});
}
