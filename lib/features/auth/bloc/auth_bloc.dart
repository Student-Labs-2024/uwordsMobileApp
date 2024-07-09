import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_login_vk/flutter_login_vk.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uwords/features/auth/data/auth_client.dart';
import 'package:uwords/features/auth/data/repository/user_repository.dart';
import 'package:uwords/features/auth/domain/user_auth_dto.dart';

part 'auth_bloc_event.dart';
part 'auth_bloc_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState>{
  final UserRepository userRepository;
  final FirebaseAuth auth = FirebaseAuth.instance;
  final vk = VKLogin();

  AuthBloc(this.userRepository) : super(const AuthState.initial()){
    on<_RegisterUser>(_handleRegisterUser);
    on<_SignInWithMailPassword>(_handleSignInWithMailPassword);
    on<_SignInWithVK>(_handleSignInWithVK);
    on<_SignInWithGoogle>(_handleSignInWithGoogle);
  }

  Future<void> _handleRegisterUser(_RegisterUser event, Emitter<AuthState> emit) async{
    emit(const AuthState.waitingAnswer());
    bool isSuccessRegister = await userRepository.registerUser(emailAddress: event.emailAddress, password: event.password);
    if (isSuccessRegister){
      emit(const AuthState.registred());
    }
    else{
      emit(const AuthState.failedRegisteration());
    }
  }

  Future<void> _handleSignInWithMailPassword(_SignInWithMailPassword event, Emitter<AuthState> emit) async{
    emit(const AuthState.waitingAnswer());
    
  }

  Future<void> _handleSignInWithVK(_SignInWithVK event, Emitter<AuthState> emit) async{
    
  }

  Future<void> _handleSignInWithGoogle(_SignInWithGoogle event, Emitter<AuthState> emit) async{
    
  }

  Future<UserAuthDto> signInWithVk() async{

  }
}