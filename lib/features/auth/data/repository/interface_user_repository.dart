import 'package:uwords/features/auth/domain/user_auth_dto.dart';

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
  Future<bool> registerUserFromGoogle({
    required String uid,
  });
  Future<void> authorizateFromGoogle({
    required String uid,
  });
  Future<int> getCurrentUserId();
  Future<UserAuthDto> getCurrentUserInfo();
  Future<String> getCurrentUserName();
  Future<String> getCurrentUserAvatarUrl();
  Future<void> updateInfoAboutUser();
  bool isSubscriptionActive();
  Future<bool> isEducationCompleted();
  String getSubscriptionExpired();
}
