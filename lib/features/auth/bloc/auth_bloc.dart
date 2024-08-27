import 'dart:developer';
import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_login_vk/flutter_login_vk.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:uwords/common/exceptions/login_exceptions.dart';
import 'package:uwords/common/utils/tokens.dart';
import 'package:uwords/common/utils/valid_string_check.dart';
import 'package:uwords/features/auth/bloc/auth_enum.dart';
import 'package:uwords/features/auth/data/repository/interface_user_repository.dart';

part 'auth_bloc_event.dart';
part 'auth_bloc_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IUserRepository userRepository;
  final VKLogin vk = VKLogin();
  final FirebaseAuth auth = FirebaseAuth.instance;
  String _uEmail = '';
  String _uName = '';
  String _uSurname = '';
  String _username = '';
  String _uPassword = '';
  String _uCode = '';
  DateTime _birthDate = DateTime.now();
  late Emitter<AuthState> _emitter;
  late AuthorizationProvider _provider;
  bool isFirstLoginCompleted = false;

  AuthBloc({required this.userRepository}) : super(const AuthState.initial()) {
    on<_RequestCodeEvent>(_handleRequestCode);
    on<_RegisterUserEvent>(_handleRegisterUser);
    on<_SignInWithVKEvent>(_handleSignInWithVK);
    on<_SignInWithGoogleEvent>(_handleSignInWithGoogle);
    on<_SignInWithMailPasswordEvent>(_handleSignInWithMailPassword);
    on<_LogOutEvent>(_handleLogOut);
    on<_ChangeDataForRegisterEvent>(_handleChangeDataForRegister);
    on<_AutoLoginEvent>(_handleAutoLogin);
  }

  Future<void> _handleRequestCode(
      _RequestCodeEvent event, Emitter<AuthState> emit) async {
    if (_checkEmailAndPassword(
        emit: emit, email: event.emailAddress, password: event.password)) {
      _uEmail = event.emailAddress;
      _username = event.nickname ?? '';
      _birthDate = event.birthDate;
      _uPassword = event.password;
      _provider = AuthorizationProvider.self;
      try {
        await userRepository.requestCode(email: _uEmail);
        emit(const AuthState.success(AuthSuccess.sendedCode));
      } on Exception catch (e) {
        log(e.toString());
        emit(const AuthState.failed(AuthError.failedSendCode));
        emit(const AuthState.initial());
      }
    } else {
      emit(const AuthState.initial());
    }
  }

  Future<void> _handleRegisterUser(
      _RegisterUserEvent event, Emitter<AuthState> emit) async {
    _uCode = event.code;
    try {
      bool isRightCode =
          await userRepository.checkCode(email: _uEmail, code: _uCode);
      if (isRightCode) {
        bool isSuccessRegister = await userRepository.registerUser(
            username: _username,
            emailAddress: _uEmail,
            password: _uPassword,
            birthDate: _birthDate,
            code: _uCode);
        if (isSuccessRegister) {
          await _authorization(emit: emit);
        } else {
          emit(const AuthState.failed(AuthError.failedRegistration));
        }
      } else {
        emit(const AuthState.failed(AuthError.codeIsNotRightOrExpired));
        emit(const AuthState.success(AuthSuccess.sendedCode));
      }
    } on Exception catch (e) {
      log(e.toString());
      _emitter = emit;
      addError(e);
    }
  }

  Future<void> _handleSignInWithVK(
      _SignInWithVKEvent event, Emitter<AuthState> emit) async {
    auth.signOut();
    userRepository.localLogOut();
    _provider = AuthorizationProvider.vk;
    try {
      await _signInWithVk();
      await _authorization(emit: emit);
    } on Exception catch (e) {
      _emitter = emit;
      addError(e);
    }
  }

  Future<void> _handleSignInWithGoogle(
      _SignInWithGoogleEvent event, Emitter<AuthState> emit) async {
    await vk.initSdk();
    if (await vk.isLoggedIn) {
      vk.logOut();
    }
    userRepository.localLogOut();
    _provider = AuthorizationProvider.google;
    try {
      await _signInWithGoogle();
      await _authorization(emit: emit);
    } on Exception catch (e) {
      _emitter = emit;
      addError(e);
    }
  }

  Future<void> _handleSignInWithMailPassword(
      _SignInWithMailPasswordEvent event, Emitter<AuthState> emit) async {
    if (_checkEmailAndPassword(
        emit: emit, email: event.emailAddress, password: event.password)) {
      auth.signOut();
      await vk.initSdk();
      if (await vk.isLoggedIn) {
        vk.logOut();
      }
      _uEmail = event.emailAddress;
      _uPassword = event.password;
      _provider = AuthorizationProvider.self;
      await _authorization(emit: emit);
    } else {
      emit(const AuthState.signInScreen());
    }
  }

  Future<void> _handleLogOut(
      _LogOutEvent event, Emitter<AuthState> emit) async {
    userRepository.localLogOut();
    emit(const AuthState.initial());
  }

  Future<void> _handleChangeDataForRegister(
      _ChangeDataForRegisterEvent event, Emitter<AuthState> emit) async {
    emit(const AuthState.initial());
  }

  Future<void> _handleAutoLogin(
      _AutoLoginEvent event, Emitter<AuthState> emit) async {
    if (isFirstLoginCompleted == false) {
      isFirstLoginCompleted = true;
      emit(const AuthState.waitingAnswer());
      try {
        final String accessToken =
            await userRepository.getCurrentUserAccessToken();
        await checkTokenExpirationAndUpdateIfNeed(
            accessToken: accessToken, userRepository: userRepository);
        emit(const AuthState.success(AuthSuccess.authorized));
      } on Exception {
        emit(const AuthState.initial());
      }
    } else {
      emit(const AuthState.initial());
    }
  }

  Future<void> _signInWithVk() async {
    await vk.initSdk();
    final res = await vk.logIn(scope: [
      VKScope.email,
    ]);
    if (res.isValue) {
      final VKLoginResult result = res.asValue!.value;
      if (result.isCanceled) {
        throw CanceledSignInException();
      } else {
        final VKAccessToken? accessToken = result.accessToken;
        if (accessToken != null) {
          final profileRes = await vk.getUserProfile();
          final profile = profileRes.asValue?.value;
          if (profile != null) {
            _uName = profile.firstName;
            _uSurname = profile.lastName;
            _uPassword = accessToken.token;
          }
        } else {}
      }
    } else {
      final errorRes = res.asError!;
      log("$errorRes");
    }
  }

  Future<void> _signInWithGoogle() async {
    try {
      final u = GoogleSignIn();
      final GoogleSignInAccount? user = await u.signIn();
      final GoogleSignInAuthentication gAuth = await user!.authentication;

      final credential = GoogleAuthProvider.credential(
          accessToken: gAuth.accessToken, idToken: gAuth.idToken);

      final creds = await auth.signInWithCredential(credential);

      _uPassword = creds.user?.uid ?? '';
    } on Exception {
      throw CanceledSignInException();
    }
  }

  Future<void> _registerAndAuth({required Emitter<AuthState> emit}) async {
    bool isSuccessRegister = false;
    switch (_provider) {
      case AuthorizationProvider.vk:
        isSuccessRegister = await userRepository.registerUserFromVK(
            accessToken: _uPassword, name: _uName, surname: _uSurname);
      case AuthorizationProvider.self:
        isSuccessRegister = await userRepository.registerUser(
            username: _username,
            emailAddress: _uEmail,
            password: _uPassword,
            birthDate: _birthDate,
            code: _uCode);
      case AuthorizationProvider.google:
        isSuccessRegister =
            await userRepository.registerUserFromGoogle(uid: _uPassword);
    }

    if (isSuccessRegister) {
      await _authorization(emit: _emitter);
    } else {
      emit(const AuthState.failed(AuthError.failedRegistration));
      await Future.delayed(const Duration(milliseconds: 500));
      emit(const AuthState.initial());
    }
  }

  Future<void> _authorization({required Emitter<AuthState> emit}) async {
    try {
      switch (_provider) {
        case AuthorizationProvider.vk:
          await userRepository.authorizateVk(
            accessToken: _uPassword,
          );
        case AuthorizationProvider.self:
          await userRepository.authorizate(
              emailAddress: _uEmail, password: _uPassword);
        case AuthorizationProvider.google:
          await userRepository.authorizateFromGoogle(uid: _uPassword);
      }
      if (await userRepository.isEducationCompleted()) {
        emit(const AuthState.success(AuthSuccess.authorized));
      } else {
        emit(const AuthState.success(AuthSuccess.educationNotCompleted));
      }
    } on Exception catch (e) {
      _emitter = emit;
      addError(e);
    }
  }

  bool _checkEmailAndPassword(
      {required Emitter<AuthState> emit,
      required String email,
      required String password}) {
    if ((isCorrectEmail(email: email) == false) ||
        (isCorrectPassword(password: password) == false)) {
      emit(const AuthState.failed(AuthError.notValidMailOrPassword));
      return false;
    }
    return true;
  }

  @override
  void onError(Object error, StackTrace stackTrace) async {
    switch (error.runtimeType) {
      case const (SocketException):
        _emitter(const AuthState.failed(AuthError.noInternet));
      case const (NotRegisteredExceptionBySelfProviderException):
        _emitter(const AuthState.failed(AuthError.failedAutorization));
        _emitter(const AuthState.signInScreen());
      case const (NotRegisteredException):
        await _registerAndAuth(emit: _emitter);
      case const (NotValidDataForLoginException):
        _emitter(const AuthState.failed(AuthError.notValidMailOrPassword));
        _emitter(const AuthState.signInScreen());
      case const (AccessIsBannedException):
        _emitter(const AuthState.failed(AuthError.failedAutorization));
        _emitter(const AuthState.signInScreen());
      case const (UnknownApiException):
        _emitter(const AuthState.failed(AuthError.unknownError));
      case const (CanceledSignInException):
        _emitter(const AuthState.failed(AuthError.canceledSignIn));
    }
    super.onError(error, stackTrace);
  }
}
