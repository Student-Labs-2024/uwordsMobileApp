import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_login_vk/flutter_login_vk.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:uwords/features/auth/data/repository/interface_user_repository.dart';
import 'package:uwords/features/auth/not_registred_exception.dart';

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
    emit(const AuthState.waitingAnswer());
    bool isSuccessRegister = await userRepository.registerUser(
        emailAddress: event.emailAddress, password: event.password);
    if (isSuccessRegister) {
      emit(const AuthState.registred());
    } else {
      emit(const AuthState.failedRegisteration());
    }
  }

  Future<void> _handleSignInWithMailPassword(
      _SignInWithMailPassword event, Emitter<AuthState> emit) async {
    auth.signOut();
    vk.logOut();
    emit(const AuthState.waitingAnswer());
    uEmail = event.password;
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
      _authorization(emit: emit, provider: "vk");
    } on NotRegisteredException {
      await _registerAndAuth(emit: emit, provider: "vk");
      await _authorization(emit: emit, provider: "vk");
    }
  }

  Future<void> _handleSignInWithGoogle(
      _SignInWithGoogle event, Emitter<AuthState> emit) async {
    emit(const AuthState.waitingAnswer());
    vk.logOut();
    userRepository.localLogOut();
    await _signInWithGoogle();
    try {
      _authorization(emit: emit, provider: "google");
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
      print('Error while log in: ${errorRes.error}');
    }
  }

  Future<void> _signInWithGoogle() async {
    //TODO check null!
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
      emit(const AuthState.failedRegisteration());
    }
  }

  Future<void> _authorization(
      {required Emitter<AuthState> emit, required String provider}) async {
    try {
      bool isSuccessAuthorization = await userRepository.authorizate(
          emailAddress: uEmail, password: providerUid, provider: provider);
      if (isSuccessAuthorization) {
        emit(const AuthState.authorized());
      } else {
        (const AuthState.failedSignIn());
        throw NotRegisteredException();
      }
    } on NotRegisteredException catch (e) {
      rethrow;
    }
  }
}
