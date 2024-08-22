import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:uwords/common/exceptions/login_exceptions.dart';
import 'package:uwords/common/utils/exception_check.dart';
import 'package:uwords/common/utils/jwt.dart';
import 'package:uwords/common/utils/platform.dart';
import 'package:uwords/features/auth/bloc/auth_enum.dart';
import 'package:uwords/features/auth/data/auth_client.dart';
import 'package:uwords/features/auth/data/data_sources/interface_network_user_data_source.dart';
import 'package:uwords/features/auth/data/request_bodies/code_request.dart';
import 'package:uwords/features/auth/data/request_bodies/login_request_body.dart';
import 'package:uwords/features/auth/data/request_bodies/register_request_body.dart';
import 'package:uwords/features/auth/domain/user_auth_dto.dart';
import 'package:uwords/secrets.dart';

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
      final aboutMeResponse = await client.aboutMe(joinTokenTypeAndToken(
          tokenType: tokenType, token: response.data['access_token'] ?? ''));
      return UserAuthDto.fromJsonAndOtherFields(
        userMap: aboutMeResponse.data,
        userEmail: userEmail,
        provider: AuthorizationProvider.self,
        accessMap: response.data,
      );
    } on DioException catch (e) {
      noInternetCheck(e);
      if (e.response != null) {
        switch (e.response!.statusCode) {
          case 400:
            throw NotValidDataForLoginException();
          case 403:
            throw AccessIsBannedException();
          case 404:
            throw NotRegisteredExceptionBySelfProvider();
          default:
            break;
        }
      }
      rethrow;
    }
  }

  @override
  Future<UserAuthDto> authorizateVk({required String accessToken}) async {
    try {
      final String currentPlatform = whichPlatformIs().name;
      final response = await client.loginVK(
          joinTokenTypeAndToken(tokenType: tokenType, token: accessToken),
          currentPlatform);
      final aboutMeResponse = await client.aboutMe(joinTokenTypeAndToken(
          tokenType: tokenType, token: response.data['access_token'] ?? ''));
      return UserAuthDto.fromJsonAndOtherFields(
        userMap: aboutMeResponse.data,
        userEmail: '',
        provider: AuthorizationProvider.vk,
        accessMap: response.data,
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
          jsonEncode(RegisterGoogleRequestBody(uid: uid)),
          joinTokenTypeAndToken(tokenType: tokenType, token: uid));
      final aboutMeResponse = await client.aboutMe(joinTokenTypeAndToken(
          tokenType: tokenType, token: response.data['access_token'] ?? ''));
      return UserAuthDto.fromJsonAndOtherFields(
        userMap: aboutMeResponse.data,
        userEmail: '',
        provider: AuthorizationProvider.google,
        accessMap: response.data,
      );
    } on DioException catch (e) {
      noInternetCheck(e);
      _checkStatusCode(e: e, provider: AuthorizationProvider.google);
      rethrow;
    }
  }

  @override
  Future<UserAuthDto> refreshAccessToken({required UserAuthDto userDto}) async {
    try {
      Map<String, String> newAccessToken = await client.refresh(
          joinTokenTypeAndToken(
              tokenType: tokenType, token: userDto.refreshToken));
      userDto.changeAccessToken(
          newAccessToken: newAccessToken['access_token'] ?? '');
      return userDto;
    } on DioException catch (e) {
      noInternetCheck(e);
      rethrow;
    }
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
    try {
      await client.registerUser(jsonEncode(registerRequestBody));
    } on DioException catch (e) {
      noInternetCheck(e);
      _checkStatusCode(e: e, provider: AuthorizationProvider.self);
      rethrow;
    }
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
    final String currentPlatform = whichPlatformIs().name;
    try {
      await client.registerUserVk(
          jsonEncode(registerRequestBody),
          joinTokenTypeAndToken(tokenType: tokenType, token: accessToken),
          currentPlatform);
    } on DioException catch (e) {
      noInternetCheck(e);
    }
  }

  @override
  Future<void> registerUserFromGoogle({
    required String uid,
  }) async {
    try {
      final RegisterGoogleRequestBody registerGoogleRequestBody =
          RegisterGoogleRequestBody(uid: uid);
      await client.registerUserGoogle(jsonEncode(registerGoogleRequestBody));
    } on DioException catch (e) {
      noInternetCheck(e);
    }
  }

  @override
  Future<bool> checkCode(
      {required String userEmail, required String code}) async {
    try {
      var response = await client.checkCode(
          joinTokenTypeAndToken(
              tokenType: tokenType, token: tokenForSendingCode),
          CheckCodeRequest(code: code, email: userEmail));
      if (response.response.statusCode == 200) {
        return response.data;
      } else {
        return false;
      }
    } on DioException catch (e) {
      noInternetCheck(e);
      rethrow;
    }
  }

  @override
  Future<void> sendCode({required String userEmail}) async {
    try {
      await client.sendCode(
          joinTokenTypeAndToken(
              tokenType: tokenType, token: tokenForSendingCode),
          userEmail);
    } on DioException catch (e) {
      noInternetCheck(e);
      _checkStatusCode(e: e, provider: AuthorizationProvider.self);
      rethrow;
    }
  }

  void _checkStatusCode(
      {required DioException e, required AuthorizationProvider provider}) {
    if (e.response != null) {
      switch (e.response!.statusCode) {
        case 400:
          throw NotValidDataForLoginException();
        case 401:
          throw NotRegisteredException(provider: provider);
        case 403:
          throw AccessIsBannedException();
        case 404:
          throw NotRegisteredException(provider: provider);
        default:
          break;
      }
    }
  }

  @override
  Future<UserAuthDto> fetchAboutMe({required UserAuthDto userDto}) async {
    final aboutMeResponse = await client.aboutMe(joinTokenTypeAndToken(
        tokenType: tokenType, token: userDto.accessToken));
    return userDto.updateInfoAboutUserByMap(
        userMap: aboutMeResponse.data, user: userDto);
  }
}
