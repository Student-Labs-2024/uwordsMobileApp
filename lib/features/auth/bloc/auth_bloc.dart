import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_login_vk/flutter_login_vk.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:uwords/common/exceptions/login_exceptions.dart';
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
  String uPhotoURL = '';
  String providerUid = '';
  String uPhoneNumber = '';
  String username = '';

  AuthBloc({required this.userRepository}) : super(const AuthState.initial()) {
    on<_RegisterUser>(_handleRegisterUser);
    on<_SignInWithMailPassword>(_handleSignInWithMailPassword);
    on<_SignInWithVK>(_handleSignInWithVK);
    on<_SignInWithGoogle>(_handleSignInWithGoogle);
    on<_LogOut>(_handleLogOut);
  }

  Future<void> _handleRegisterUser(
      _RegisterUser event, Emitter<AuthState> emit) async {
    _checkEmailAndPassword(
        emit: emit, email: event.emailAddress, password: event.password);
    emit(const AuthState.waitingAnswer());
    bool isSuccessRegister = await userRepository.registerUser(
        emailAddress: event.emailAddress, password: event.password);
    if (isSuccessRegister) {
      emit(const AuthState.registred());
    } else {
      emit(const AuthState.failedRegistration());
    }
  }

  Future<void> _handleSignInWithMailPassword(
      _SignInWithMailPassword event, Emitter<AuthState> emit) async {
    _checkEmailAndPassword(
        emit: emit, email: event.emailAddress, password: event.password);
    auth.signOut();
    vk.logOut();
    emit(const AuthState.waitingAnswer());
    uEmail = event.emailAddress;
    providerUid = event.password;
    await _authorization(emit: emit, provider: "self");
  }

  Future<void> _handleSignInWithVK(
      _SignInWithVK event, Emitter<AuthState> emit) async {
    emit(const AuthState.waitingAnswer());
    auth.signOut();
    userRepository.localLogOut();
    await _signInWithVk();
    try {
      await _authorization(emit: emit, provider: "vk");
    } on NotRegisteredException {
      await _registerAndAuth(emit: emit, provider: "vk");
    }
  }

  Future<void> _handleSignInWithGoogle(
      _SignInWithGoogle event, Emitter<AuthState> emit) async {
    emit(const AuthState.waitingAnswer());
    vk.logOut();
    userRepository.localLogOut();
    await _signInWithGoogle();
    try {
      await _authorization(emit: emit, provider: "google");
    } on NotRegisteredException {
      await _registerAndAuth(emit: emit, provider: "google");
    }
  }

  Future<void> _handleLogOut(_LogOut event, Emitter<AuthState> emit) async {
    userRepository.localLogOut();
    emit(const AuthState.initial());
  }

  Future<void> _signInWithVk() async {
    //TODO check initSDK true false
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
            uPhotoURL = profile.photo200 ?? '';
            providerUid = profile.userId.toString();
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

    providerUid = creds.user?.uid ?? '';
    uEmail = creds.user?.email ?? '';
    uPhotoURL = creds.user?.photoURL ?? '';
    username = creds.user?.displayName ?? '';
    uPhoneNumber = creds.user?.phoneNumber ?? '';
  }

  Future<void> _registerAndAuth(
      {required Emitter<AuthState> emit, required String provider}) async {
    bool isSuccessRegister =
        await userRepository.registerUserFromThirdPartyService(
            email: uEmail,
            password: providerUid,
            username: username,
            name: uName,
            surname: uSurName,
            avatarUrl: uPhotoURL,
            phoneNumber: uPhoneNumber,
            provider: provider);
    if (isSuccessRegister) {
      await _authorization(emit: emit, provider: provider);
      emit(const AuthState.authorized());
    } else {
      emit(const AuthState.failedRegistration());
    }
  }

  Future<void> _authorization(
      {required Emitter<AuthState> emit, required String provider}) async {
    try {
      await userRepository.authorizate(
          emailAddress: uEmail, password: providerUid, provider: provider);
      emit(const AuthState.authorized());
    } on Exception catch (e) {
      switch (e.runtimeType) {
        case NotRegisteredException():
          await _registerAndAuth(emit: emit, provider: provider);
        case NotValidDataForLoginException():
          emit(const AuthState.notValidMail());
        case AccessIsBannedException():
          emit(const AuthState.failedAutorization());
        case UnknownApiException():
          emit(const AuthState.unknownError());
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
        .hasMatch(email);
  }

  void _checkEmailAndPassword(
      {required Emitter<AuthState> emit,
      required String email,
      required String password}) {
    if (_isCorrectEmail(email: email) == false) {
      emit(const AuthState.notValidMail());
    }
    if (_isCorrectPassword(password: password) == false) {
      emit(const AuthState.badPassword());
    }
  }
}
