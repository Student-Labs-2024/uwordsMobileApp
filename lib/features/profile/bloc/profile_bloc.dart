import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uwords/features/auth/data/repository/interface_user_repository.dart';

part 'profile_bloc.freezed.dart';
part 'profile_state.dart';
part 'profile_event.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final IUserRepository userRepository;

  ProfileBloc({required this.userRepository})
      : super(const ProfileState.initial()) {
    on<_GetUserInfo>(_handleGetUserInfo);
    on<_SetScreen>(_handleSetScreen);
  }

  Future<void> _handleGetUserInfo(
      _GetUserInfo event, Emitter<ProfileState> emit) async {
    String userName = await userRepository.getCurrentUserName();
    String avatarUrl = await userRepository.getCurrentUserAvatarUrl();
    emit(ProfileState.userGot(userName, avatarUrl));
    emit(const ProfileState.statisticsScreen());
  }

  void _handleSetScreen(_SetScreen event, Emitter<ProfileState> emit) {
    switch (event.id) {
      case 0:
        emit(const ProfileState.statisticsScreen());
        return;
      case 1:
        emit(const ProfileState.activitiesScreen());
        return;
      default:
        emit(const ProfileState.achievementsScreen());
        return;
    }
  }
}
