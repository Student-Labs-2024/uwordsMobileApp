import 'package:uwords/features/auth/bloc/auth_providers.dart';

abstract interface class IUserRepository {
  void localLogOut();
  Future<bool> registerUser({
    required String emailAddress,
    required String password,
    required String username,
    required DateTime birthDate,
    required String code,
  });
  Future<String> refreshAccessToken();
  Future<void> authorizate({
    required String emailAddress,
    required String password,
    required AuthorizationProvider provider,
  });
  Future<void> authorizateVk({required String accessToken});
  Future<bool> registerUserFromVK({
    required String accessToken,
    required String name,
    required String surname,
  });
  Future<String> getCurrentUserAccessToken();
  Future<void> requestCode({required String email});
  Future<bool> checkCode({required String email, required String code});
}
