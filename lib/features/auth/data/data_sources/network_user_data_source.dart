import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:uwords/common/exceptions/login_exceptions.dart';
import 'package:uwords/common/utils/exception_check.dart';
import 'package:uwords/common/utils/jwt.dart';
import 'package:uwords/features/auth/bloc/auth_enum.dart';
import 'package:uwords/features/auth/data/auth_client.dart';
import 'package:uwords/features/auth/data/data_sources/interface_network_user_data_source.dart';
import 'package:uwords/features/auth/data/request_bodies/code_request.dart';
import 'package:uwords/features/auth/data/request_bodies/login_request_body.dart';
import 'package:uwords/features/auth/data/request_bodies/register_request_body.dart';
import 'package:uwords/features/auth/domain/user_auth_dto.dart';

class NetworkUserDataSource implements INetworkUserDataSource {
  static Dio dio = GetIt.instance.get<Dio>();
  final client = AuthClient(dio);
  final String tokenType = "Bearer";

  @override
  Future<UserAuthDto> authorizate(
      {required String userEmail, required String password}) async {
    final LoginRequestBody loginRequestBody =
        LoginRequestBody(email: userEmail, password: password);
    try {
      final response = await client.login(jsonEncode(loginRequestBody));
      return UserAuthDto.fromJsonAndOtherFields(
        userEmail: userEmail,
        provider: AuthorizationProvider.self,
        map: response.data,
      );
    } on DioException catch (e) {
      noInternetCheck(e);
      _checkStatusCode(e: e, provider: AuthorizationProvider.self);
      rethrow;
    }
  }

  @override
  Future<UserAuthDto> authorizateVk({required String accessToken}) async {
    try {
      final response = await client.loginVK(joinTokenTypeAndToken(tokenType: tokenType, token: accessToken));
      return UserAuthDto.fromJsonAndOtherFields(
        userEmail: '',
        provider: AuthorizationProvider.vk,
        map: response.data,
      );
    } on DioException catch (e) {
      noInternetCheck(e);
      _checkStatusCode(e: e, provider: AuthorizationProvider.vk);
      rethrow;
    }
  }

  @override
  Future<UserAuthDto> authorizateGoogle({required String uid}) async {
    try {
      final response = await client.loginGoogle(
          jsonEncode(RegisterGoogleRequestBody(uid: uid)), joinTokenTypeAndToken(tokenType: tokenType, token: uid));
      return UserAuthDto.fromJsonAndOtherFields(
        userEmail: '',
        provider: AuthorizationProvider.google,
        map: response.data,
      );
    } on DioException catch (e) {
      noInternetCheck(e);
      _checkStatusCode(e: e, provider: AuthorizationProvider.google);
      rethrow;
    }
  }

  @override
  Future<UserAuthDto> refreshAccessToken({required UserAuthDto userDto}) async {
    Map<String, String> newAccessToken =
        await client.refresh(joinTokenTypeAndToken(tokenType: tokenType, token: userDto.refreshToken));
    userDto.changeAccessToken(
        newAccessToken: newAccessToken['access_token'] ?? '');
    return userDto;
  }

  @override
  Future<void> registerUser(
      {required String userEmail,
      required String password,
      required String username,
      required DateTime birthDate,
      required String code}) async {
    final registerRequestBody = RegisterRequestBody(
      email: userEmail,
      password: password,
      username: username,
      code: code,
      birthDate: birthDate,
    );
    await client.registerUser(jsonEncode(registerRequestBody));
  }

  @override
  Future<void> registerUserFromVK({
    required String accessToken,
    required String name,
    required String surname,
  }) async {
    final registerRequestBody = RegisterVKRequestBody(
      firstname: name,
      lastname: surname,
    );
    await client.registerUserVk(
        jsonEncode(registerRequestBody), joinTokenTypeAndToken(tokenType: tokenType, token: accessToken));
  }

  @override
  Future<void> registerUserFromGoogle({
    required String uid,
  }) async {
    final RegisterGoogleRequestBody registerGoogleRequestBody =
        RegisterGoogleRequestBody(uid: uid);
    await client.registerUserGoogle(jsonEncode(registerGoogleRequestBody));
  }

  @override
  Future<bool> checkCode(
      {required String userEmail, required String code}) async {
    var response =
        await client.checkCode(CheckCodeRequest(code: code, email: userEmail));
    if (response.response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Future<void> sendCode({required String userEmail}) async {
    await client.sendCode(userEmail);
  }

  void _checkStatusCode(
      {required DioException e, required AuthorizationProvider provider}) {
    if (e.response != null) {
      switch (e.response!.statusCode) {
        case 400:
          throw NotValidDataForLoginException();
        case 403:
          throw AccessIsBannedException();
        case 404:
          throw NotRegisteredException(provider: provider);
        default:
          break;
      }
    }
  }
}
