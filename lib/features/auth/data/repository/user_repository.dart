import 'dart:developer';

import 'package:uwords/features/auth/data/data_sources/interface_network_user_data_source.dart';
import 'package:uwords/features/auth/domain/user_auth_dto.dart';
import 'package:uwords/features/auth/not_registred_exception.dart';
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
      {required String emailAddress,
      required password,
      required String provider}) async {
    try {
      UserAuthDto user = await networkUserDataSource.authorizate(
          userEmail: emailAddress, password: password, provider: provider);
      _saveUser(userDto: user);
      return true;
    } on NotRegisteredException catch (e) {
      return false;
    }
  }

  @override
  Future<String> refreshAccessToken() async {
    UserAuthDto userDto = await savableUserDataSource.getCurrent();
    _saveUser(
        userDto:
            await networkUserDataSource.refreshAccessToken(userDto: userDto));
    return userDto.accessToken;
  }

  @override
  Future<bool> registerUser(
      {required String emailAddress, required String password}) async {
    try {
      await networkUserDataSource.registerUser(
          userEmail: emailAddress, password: password);
      return true;
    } on Exception catch (e) {
      log(e.toString());
      return false;
    }
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
      required String provider}) async {
    try {
      await networkUserDataSource.registerUserFromThirdPartyService(
          userEmail: email,
          password: password,
          username: username,
          name: name,
          surname: surname,
          avatarUrl: avatarUrl,
          phoneNumber: phoneNumber,
          provider: provider);
      return true;
    } on Exception catch (e) {
      log(e.toString());
      return false;
    }
  }

  void _saveUser({required UserAuthDto userDto}) async {
    await savableUserDataSource.saveUser(userDto: userDto);
  }

  @override
  Future<String> getCurrentUserAccessToken() async {
    UserAuthDto currentUser = await savableUserDataSource.getCurrent();
    return currentUser.accessToken;
  }

  @override
  void localLogOut() async {
    await savableUserDataSource.noneIsCurrent();
  }
}
