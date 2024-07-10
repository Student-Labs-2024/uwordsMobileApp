import 'package:uwords/features/auth/data/data_sources/interface_network_user_data_source.dart';
import 'package:uwords/features/auth/domain/user_auth_dto.dart';

class NetworkUserDataSource implements INetworkUserDataSource {
  @override
  Future<bool> authorizate(
      {required String userEmail,
      required String password,
      required String provider}) {
    // TODO: implement authorizate
    throw UnimplementedError();
  }

  @override
  Future<UserAuthDto> refreshAccessToken({required UserAuthDto userDto}) {
    // TODO: implement refreshAccessToken
    throw UnimplementedError();
  }

  @override
  Future<UserAuthDto> registerUser(
      {required String userEmail, required String password}) {
    // TODO: implement registerUser
    throw UnimplementedError();
  }

  @override
  Future<UserAuthDto> registerUserFromThirdPartyService(
      {required String userEmail,
      required String password,
      required String username,
      required String name,
      required String surname,
      required String avatarUrl,
      required String phoneNumber,
      required String provider}) {
    // TODO: implement registerUserFromThirdPartyService
    throw UnimplementedError();
  }
}
