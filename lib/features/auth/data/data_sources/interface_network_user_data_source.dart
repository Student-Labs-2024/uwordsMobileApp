import 'package:uwords/features/auth/domain/user_auth_dto.dart';

abstract interface class INetworkUserDataSource {
  Future<UserAuthDto> authorizate(
      {required String userEmail, required String password});
  Future<UserAuthDto> authorizateVk({required String accessToken});
  Future<UserAuthDto> authorizateGoogle({required String uid});
  Future<void> registerUser(
      {required String userEmail,
      required String password,
      required String username,
      required DateTime birthDate,
      required String code});
  Future<void> registerUserFromVK({
    required String accessToken,
    required String name,
    required String surname,
  });
  Future<void> registerUserFromGoogle({
    required String uid,
  });
  Future<UserAuthDto> refreshAccessToken({required UserAuthDto userDto});
  Future<void> sendCode({required String userEmail});
  Future<bool> checkCode({required String userEmail, required String code});
  Future<UserAuthDto> fetchAboutMe({required UserAuthDto userDto});
  Future<void> updateOnboardingComplete({required String userAccessToken});
}
