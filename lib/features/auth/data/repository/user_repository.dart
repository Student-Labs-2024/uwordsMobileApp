import 'dart:developer';
import 'package:intl/intl.dart';
import 'package:uwords/common/exceptions/login_exceptions.dart';
import 'package:uwords/common/utils/jwt.dart';
import 'package:uwords/features/auth/data/data_sources/interface_network_user_data_source.dart';
import 'package:uwords/features/auth/data/user_auth_dto.dart';
import 'package:uwords/features/database/data_sources/savable_user_data_source.dart';
import 'package:uwords/features/auth/data/repository/interface_user_repository.dart';
import 'package:uwords/features/global/domain/simple_user_info.dart';
import 'package:uwords/features/profile/data/constants/other_profile_constants.dart';

class UserRepository implements IUserRepository {
  final ISavableUserDataSource savableUserDataSource;
  final INetworkUserDataSource networkUserDataSource;
  late SimpleUserInfo _currentUser;

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
      await _saveUser(userDto: user);
    } on Exception {
      rethrow;
    }
  }

  @override
  Future<String> refreshAccessToken() async {
    UserAuthDto userDto = await savableUserDataSource.getCurrent();
    if (!isTokenExpired(token: userDto.refreshToken)) {
      UserAuthDto newUserAuthDto =
          await networkUserDataSource.refreshAccessToken(userDto: userDto);
      await _saveUser(userDto: newUserAuthDto);
      _currentUser =
          SimpleUserInfo.fromUserAuthDto(userAuthDto: newUserAuthDto);
      return userDto.accessToken;
    } else {
      throw OldRefreshTokenException();
    }
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

  Future<void> _saveUser({required UserAuthDto userDto}) async {
    log('Saved user:\n id: ${userDto.id},\n accessToken: ${userDto.accessToken},\n refreshToken ${userDto.refreshToken}');
    await savableUserDataSource.saveUser(userDto: userDto);
    _currentUser = SimpleUserInfo.fromUserAuthDto(userAuthDto: userDto);
  }

  @override
  Future<String> getCurrentUserAccessToken() async {
    try {
      return _currentUser.accessToken;
    } on Error {
      try {
        UserAuthDto userAuthDto = await savableUserDataSource.getCurrent();
        _currentUser = SimpleUserInfo.fromUserAuthDto(userAuthDto: userAuthDto);
        return _currentUser.accessToken;
      } on Exception {
        rethrow;
      }
    } on Exception {
      rethrow;
    }
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
      await _saveUser(userDto: user);
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
      await _saveUser(userDto: user);
    } on Exception catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  @override
  int getCurrentUserId() {
    return _currentUser.id;
  }

  @override
  String getCurrentUserName() {
    return _currentUser.username;
  }

  @override
  String getCurrentUserAvatarUrl() {
    return _currentUser.avatarUrl;
  }

  @override
  Future<void> updateInfoAboutUser() async {
    final UserAuthDto userAuthDto = await savableUserDataSource.getCurrent();
    final UserAuthDto result =
        await networkUserDataSource.fetchAboutMe(userDto: userAuthDto);
    _currentUser = SimpleUserInfo.fromUserAuthDto(userAuthDto: result);
    //TODO need to add into savable user data source update method
    await _saveUser(userDto: result);
  }

  @override
  int getCurrentUserDaysStreak() {
    return _currentUser.metricsDto.days;
  }

  @override
  bool isSubscriptionActive() {
    if (_currentUser.subscriptionType == null) {
      return false;
    } else {
      if (_currentUser.subscriptionExpired != null) {
        return DateTime.now().isBefore(_currentUser.subscriptionExpired!);
      } else {
        return false;
      }
    }
  }

  //TODO Change educationCompleted checking
  @override
  Future<bool> isEducationCompleted() async {
    final UserAuthDto userAuthDto = await savableUserDataSource.getCurrent();
    return userAuthDto.isEducationCompleted;
  }

  @override
  String getSubscriptionExpired() {
    if (_currentUser.subscriptionExpired != null) {
      return DateFormat('dd.MM.yyyy')
          .format(_currentUser.subscriptionExpired!)
          .toString();
    }
    return OtherProfileConstants.mockSubscriptionData;
  }

  @override
  Future<UserAuthDto> getCurrentUserInfo() async {
    UserAuthDto currentUser = await savableUserDataSource.getCurrent();
    return currentUser;
  }

  @override
  Future<void> onboardingCompleted() async {
    await networkUserDataSource.updateOnboardingComplete(
        userAccessToken: _currentUser.accessToken);
    await updateInfoAboutUser();
  }

  @override
  Future<void> sendGrade(
      String accessToken, int grade, String gradeMessage) async {
    try {
      await networkUserDataSource.sendGrade(accessToken, grade, gradeMessage);
    } on Exception catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
