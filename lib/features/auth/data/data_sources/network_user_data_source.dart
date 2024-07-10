import 'package:dio/dio.dart';
import 'package:uwords/features/auth/data/auth_client.dart';
import 'package:uwords/features/auth/data/data_sources/interface_network_user_data_source.dart';
import 'package:uwords/features/auth/domain/user_auth_dto.dart';

class NetworkUserDataSource implements INetworkUserDataSource {
  static Dio dio = Dio();
  final client = AuthClient(dio);

  @override
  Future<UserAuthDto> authorizate(
      {required String userEmail,
      required String password,
      required String provider}) async {
    Map<String, String> response =
        await client.login(provider, userEmail, password);
    return UserAuthDto.fromJsonAndOtherFields(
      userEmail: userEmail,
      password: password,
      provider: provider,
      map: response,
    );
  }

  @override
  Future<UserAuthDto> refreshAccessToken({required UserAuthDto userDto}) async {
    Map<String, String> newAccessToken =
        await client.refresh(userDto.refreshToken);
    userDto.changeAccessToken(
        newAccessToken: newAccessToken['access_token'] ?? '');
    return userDto;
  }

  @override
  Future<void> registerUser(
      {required String userEmail, required String password}) async {
    await client.register("self", userEmail, password);
  }

  @override
  Future<void> registerUserFromThirdPartyService(
      {required String userEmail,
      required String password,
      required String username,
      required String name,
      required String surname,
      required String avatarUrl,
      required String phoneNumber,
      required String provider}) async {
    await client.registerUserFromThirdPartyService(provider, userEmail,
        password, username, name, surname, avatarUrl, phoneNumber);
  }
}
