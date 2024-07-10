import 'package:uwords/features/auth/domain/user_auth_dto.dart';
import 'package:uwords/features/database/data_sources/savable_user_data_source.dart';
import 'package:uwords/features/auth/data/repository/interface_user_repository.dart';

class UserRepository implements IUserRepository {
  final ISavableUserDataSource savableUserDataSource;

  UserRepository({required this.savableUserDataSource});

  @override
  Future<bool> authentication() {
    // TODO: implement authentication
    throw UnimplementedError();
  }

  @override
  Future<UserAuthDto> refreshAccessToken({required UserAuthDto userDto}) {
    // TODO: implement refreshAccessToken
    throw UnimplementedError();
  }

  @override
  Future<bool> registerUser(
      {required String emailAddress, required String password}) {
    // TODO: implement registerUser
    throw UnimplementedError();
  }

  @override
  Future<bool> registerUserFromThirdPartyService(
      {required String email,
      required String password,
      required String username,
      required String name,
      required String surname,
      required String avatarUrl,
      required String phoneNumber}) {
    // TODO: implement registerUserFromThirdPartyService
    throw UnimplementedError();
  }

  @override
  void saveUser({required UserAuthDto userDto}) {
    savableUserDataSource.saveUser(userDto: userDto);
  }
}
