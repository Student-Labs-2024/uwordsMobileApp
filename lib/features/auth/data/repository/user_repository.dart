import 'dart:developer';

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
  Future<void> authorizate({
    required String emailAddress,
    required String password,
  }) async {
    try {
      UserAuthDto user = await networkUserDataSource.authorizate(
          userEmail: emailAddress, password: password);
      _saveUser(userDto: user);
    } on Exception {
      rethrow;
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
  Future<bool> registerUser({
    required String emailAddress,
    required String password,
    required String username,
    required DateTime birthDate,
    required String code,
  }) async {
    try {
      await networkUserDataSource.registerUser(
          userEmail: emailAddress,
          password: password,
          username: username,
          code: code,
          birthDate: birthDate);
      return true;
    } on Exception catch (e) {
      log(e.toString());
      return false;
    }
  }

  @override
  Future<bool> registerUserFromGoogle({
    required String uid,
  }) async {
    try {
      await networkUserDataSource.registerUserFromGoogle(uid: uid);
      return true;
    } on Exception catch (e) {
      log(e.toString());
      return false;
    }
  }

  @override
  Future<bool> registerUserFromVK({
    required String accessToken,
    required String name,
    required String surname,
  }) async {
    try {
      await networkUserDataSource.registerUserFromVK(
        accessToken: accessToken,
        name: name,
        surname: surname,
      );
      return true;
    } on Exception catch (e) {
      log(e.toString());
      return false;
    }
  }

  void _saveUser({required UserAuthDto userDto}) async {
    log('Saved user:\n id: ${userDto.id},\n accessToken: ${userDto.accessToken},\n refreshToken ${userDto.refreshToken}');
    await savableUserDataSource.saveUser(userDto: userDto);
  }

  @override
  Future<String> getCurrentUserAccessToken() async {
    UserAuthDto currentUser = await savableUserDataSource.getCurrent();
    return currentUser.accessToken;
  }

  @override
  void localLogOut() async {
    savableUserDataSource.noneIsCurrent();
  }

  @override
  Future<bool> checkCode({required String email, required String code}) {
    var result = networkUserDataSource.checkCode(userEmail: email, code: code);
    return result;
  }

  @override
  Future<void> requestCode({required String email}) async {
    await networkUserDataSource.sendCode(userEmail: email);
  }

  @override
  Future<void> authorizateVk({required String accessToken}) async {
    try {
      UserAuthDto user =
          await networkUserDataSource.authorizateVk(accessToken: accessToken);
      _saveUser(userDto: user);
    } on Exception catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  @override
  Future<void> authorizateFromGoogle({
    required String uid,
  }) async {
    try {
      UserAuthDto user =
          await networkUserDataSource.authorizateGoogle(uid: uid);
      _saveUser(userDto: user);
    } on Exception catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  @override
  Future<int> getCurrentUserId() async {
    UserAuthDto currentUser = await savableUserDataSource.getCurrent();
    return currentUser.id;
  }
}
