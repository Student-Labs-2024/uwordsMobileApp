abstract interface class IUserRepository {
  void localLogOut();
  Future<bool> registerUser(
      {required String emailAddress,
      required String password,
      required DateTime birthDate});
  Future<String> refreshAccessToken();
  Future<void> authorizate(
      {required String emailAddress,
      required String password,
      required String provider});
  Future<bool> registerUserFromThirdPartyService({
    required String email,
    required String password,
    required String username,
    required String name,
    required String surname,
    required String avatarUrl,
    required String phoneNumber,
    required String provider,
    required DateTime birthDate,
  });
  Future<String> getCurrentUserAccessToken();
  Future<void> requestCode({required String email});
  Future<bool> checkCode({required String email, required String code});
}
