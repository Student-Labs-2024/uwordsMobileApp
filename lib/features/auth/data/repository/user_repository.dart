import 'package:uwords/features/auth/data/data_sources/interface_network_user_data_source.dart';
import 'package:uwords/features/auth/domain/user_auth_dto.dart';
import 'package:uwords/features/database/data_sources/savable_user_data_source.dart';
import 'package:uwords/features/auth/data/repository/interface_user_repository.dart';

class UserRepository implements IUserRepository {
  final ISavableUserDataSource savableUserDataSource;
  final INetworkUserDataSource networkUserDataSource;

  UserRepository(
      {required this.networkUserDataSource,
      required this.savableUserDataSource});

  @override
  Future<bool> authorizate(
      {required String emailAddress, required String provider}) async {
        try{
          UserAuthDto user =
        await _getUser(userEmail: emailAddress, provider: provider);
    bool isSuccessAuthorization = await networkUserDataSource.authorizate(
        userEmail: user.email,
        password: user.accessToken,
        provider: provider);
    if (isSuccessAuthorization) 
        {
          saveUser(userDto: user);
    } else {}
        }
        on Exception catch (e){
          rethrow;
        }
    
    // TODO: implement authentication
    throw UnimplementedError();
  }

  @override
  Future<UserAuthDto> refreshAccessToken() {
    // TODO: implement refreshAccessToken
    throw UnimplementedError();
  }

  @override
  Future<bool> registerUser(
      {required String emailAddress, required String password}) {
    networkUserDataSource.registerUser(
        userEmail: emailAddress, password: password);
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
      required String phoneNumber,
      required String provider}) {
    // TODO: implement registerUserFromThirdPartyService
    throw UnimplementedError();
  }

  @override
  void saveUser({required UserAuthDto userDto}) {
    savableUserDataSource.saveUser(userDto: userDto);
  }

  Future<UserAuthDto> _getUser(
      {required String userEmail, required String provider}) async {
    return UserAuthDto.fromDB(await savableUserDataSource.fetchUser(
        uEmail: userEmail, provider: provider));
  }
}
