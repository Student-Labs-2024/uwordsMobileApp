import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_login_vk/flutter_login_vk.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:uwords/common/exceptions/login_exceptions.dart';
import 'package:uwords/features/auth/bloc/auth_errors_enum.dart';
import 'package:uwords/features/auth/bloc/auth_providers.dart';
import 'package:uwords/features/auth/data/repository/interface_user_repository.dart';

part 'auth_bloc_event.dart';
part 'auth_bloc_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IUserRepository userRepository;
  final VKLogin vk = VKLogin();
  final FirebaseAuth auth = FirebaseAuth.instance;
  String uEmail = '';
  String uName = '';
  String uSurName = '';
  String username = '';
  String uPassword = '';
  String uCode = '';
  DateTime birthDate = DateTime.now();

  AuthBloc({required this.userRepository}) : super(const AuthState.initial()) {
    on<_RequestCode>(_handleRequestCode);
    on<_RegisterUser>(_handleRegisterUser);
    on<_SignInWithVK>(_handleSignInWithVK);
    on<_SignInWithGoogle>(_handleSignInWithGoogle);
    on<_SignInWithMailPassword>(_handleSignInWithMailPassword);
    on<_LogOut>(_handleLogOut);
  }

  Future<void> _handleRequestCode(
      _RequestCode event, Emitter<AuthState> emit) async {
    emit(const AuthState.waitingAnswer());
    if (_checkEmailAndPassword(
        emit: emit, email: event.emailAddress, password: event.password)) {
      uEmail = event.emailAddress;
      username = event.nickname ?? '';
      birthDate = event.birthDate;
      try {
        await userRepository.requestCode(email: uEmail);
        emit(const AuthState.sendedCode());
      } on Exception {
        emit(const AuthState.failed(AuthError.failedSendCode));
      }
    } else {
      emit(const AuthState.initial());
    }
  }

  Future<void> _handleRegisterUser(
      _RegisterUser event, Emitter<AuthState> emit) async {
    emit(const AuthState.waitingAnswer());
    uCode = event.code;
    try {
      bool isRightCode =
          await userRepository.checkCode(email: uEmail, code: uCode);
      if (isRightCode) {
        bool isSuccessRegister = await userRepository.registerUser(
            username: username,
            emailAddress: uEmail,
            password: uPassword,
            birthDate: birthDate,
            code: uCode);
        if (isSuccessRegister) {
          await _authorization(
              emit: emit, provider: AuthorizationProvider.self);
          emit(const AuthState.authorized());
        } else {
          emit(const AuthState.failed(AuthError.failedRegistration));
        }
      } else {
        emit(const AuthState.failed(AuthError.codeIsNotRight));
      }
    } on Exception catch (e) {
      log(e.toString());
      emit(const AuthState.failed(AuthError.unknownError));
    }
  }

  Future<void> _handleSignInWithVK(
      _SignInWithVK event, Emitter<AuthState> emit) async {
    emit(const AuthState.waitingAnswer());
    auth.signOut();
    userRepository.localLogOut();
    await _signInWithVk();
    try {
      await _authorization(emit: emit, provider: AuthorizationProvider.vk);
    } on NotRegisteredException {
      await _registerAndAuth(emit: emit, provider: AuthorizationProvider.vk);
    }
  }

  Future<void> _handleSignInWithGoogle(
      _SignInWithGoogle event, Emitter<AuthState> emit) async {
    emit(const AuthState.waitingAnswer());
    vk.logOut();
    userRepository.localLogOut();
    await _signInWithGoogle();
    try {
      await _authorization(emit: emit, provider: AuthorizationProvider.google);
    } on NotRegisteredException {
      await _registerAndAuth(
          emit: emit, provider: AuthorizationProvider.google);
    }
  }

  Future<void> _handleSignInWithMailPassword(
      _SignInWithMailPassword event, Emitter<AuthState> emit) async {
    if (_checkEmailAndPassword(
        emit: emit, email: event.emailAddress, password: event.password)) {
      auth.signOut();
      vk.logOut();
      emit(const AuthState.waitingAnswer());
      uEmail = event.emailAddress;
      uPassword = event.password;
      await _authorization(emit: emit, provider: AuthorizationProvider.self);
    } else {
      emit(const AuthState.initial());
    }
  }

  Future<void> _handleLogOut(_LogOut event, Emitter<AuthState> emit) async {
    userRepository.localLogOut();
    emit(const AuthState.initial());
  }

  Future<void> _signInWithVk() async {
    await vk.initSdk();
    final res = await vk.logIn(scope: [
      VKScope.email,
    ]);
    if (res.isValue) {
      final VKLoginResult result = res.asValue!.value;

      if (result.isCanceled) {
      } else {
        final VKAccessToken? accessToken = result.accessToken;
        if (accessToken != null) {
          final profileRes = await vk.getUserProfile();
          final profile = profileRes.asValue?.value;
          if (profile != null) {
            uName = profile.firstName;
            uSurName = profile.lastName;
            uPassword = accessToken.token;
          }
          //TODO check auth true/false for
          uEmail = await vk.getUserEmail() ?? '';
        } else {}
      }
    } else {
      final errorRes = res.asError!;
      log("$errorRes");
    }
  }

  Future<void> _signInWithGoogle() async {
    final GoogleSignInAccount? user = await GoogleSignIn().signIn();

    final GoogleSignInAuthentication gAuth = await user!.authentication;

    final credential = GoogleAuthProvider.credential(
        accessToken: gAuth.accessToken, idToken: gAuth.idToken);

    final creds = await auth.signInWithCredential(credential);

    uPassword = creds.user?.uid ?? '';
    uEmail = creds.user?.email ?? '';
    username = creds.user?.displayName ?? '';
  }

  Future<void> _registerAndAuth(
      {required Emitter<AuthState> emit,
      required AuthorizationProvider provider}) async {
    bool isSuccessRegister = false;
    switch (provider) {
      case AuthorizationProvider.vk:
        isSuccessRegister = await userRepository.registerUserFromVK(
            accessToken: uPassword, name: uName, surname: uSurName);
      case AuthorizationProvider.self:
        await userRepository.registerUser(
            username: username,
            emailAddress: uEmail,
            password: uPassword,
            birthDate: birthDate,
            code: uCode);
      case AuthorizationProvider.google:
      // TODO: Handle case with Google provider
    }

    if (isSuccessRegister) {
      await _authorization(emit: emit, provider: provider);
      emit(const AuthState.authorized());
    } else {
      emit(const AuthState.failed(AuthError.failedRegistration));
      await Future.delayed(const Duration(milliseconds: 1500));
      emit(const AuthState.initial());
    }
  }

  Future<void> _authorization(
      {required Emitter<AuthState> emit,
      required AuthorizationProvider provider}) async {
    try {
      switch (provider) {
        case AuthorizationProvider.vk:
          await userRepository.authorizateVk(accessToken: uPassword,);
        case AuthorizationProvider.self:
          await userRepository.authorizate(
              emailAddress: uEmail, password: uPassword, provider: provider);
        case AuthorizationProvider.google:
        // TODO: Handle case with Google provider
      }
      emit(const AuthState.authorized());
    } on Exception catch (e) {
      switch (e.runtimeType) {
        case NotRegisteredException():
          await _registerAndAuth(emit: emit, provider: provider);
        case NotValidDataForLoginException():
          emit(const AuthState.failed(AuthError.notValidMail));
        case AccessIsBannedException():
          emit(const AuthState.failed(AuthError.failedAutorization));
          await Future.delayed(const Duration(milliseconds: 1500));
          emit(const AuthState.initial());
        case UnknownApiException():
          emit(const AuthState.failed(AuthError.unknownError));
      }
    }
  }

  bool _isCorrectPassword({required String password}) {
    bool hasUppercase = password.contains(RegExp(r'[A-Z]'));
    bool hasLowercase = password.contains(RegExp(r'[a-z]'));
    bool hasDigits = password.contains(RegExp(r'[0-9]'));
    bool hasSpecialCharacters =
        password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
    bool hasMinLength = password.length > 8;
    bool hasNotcyrillicCharacters = !password.contains(RegExp(r'[а-яА-Я]'));

    return hasLowercase &&
        hasUppercase &&
        hasDigits &&
        hasSpecialCharacters &&
        hasMinLength &&
        hasNotcyrillicCharacters;
  }

  bool _isCorrectEmail({required String email}) {
    return RegExp(
                r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
            .hasMatch(email) &&
        !email.contains(RegExp(r'[а-яА-Я]'));
  }

  bool _checkEmailAndPassword(
      {required Emitter<AuthState> emit,
      required String email,
      required String password}) {
    if (_isCorrectEmail(email: email) == false) {
      emit(const AuthState.failed(AuthError.notValidMail));
      return false;
    }
    if (_isCorrectPassword(password: password) == false) {
      emit(const AuthState.failed(AuthError.badPassword));
      return false;
    }
    return true;
  }
}
