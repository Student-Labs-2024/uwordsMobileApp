part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.getUserInfo() = _GetUserInfo;
  const factory ProfileEvent.setScreen(int id) = _SetScreen;
}
