import 'package:uwords/features/auth/domain/user_auth_dto.dart';

abstract interface class IUserRepository {
  void saveUser({required UserAuthDto userDto});
  Future<bool> registerUser(
      {required String emailAddress, required String password});
  Future<UserAuthDto> refreshAccessToken({required UserAuthDto userDto});
  Future<bool> authentication({required UserAuthDto userDto});
  Future<bool> registerUserFromThirdPartyService(
      {required UserAuthDto userDto});
}
