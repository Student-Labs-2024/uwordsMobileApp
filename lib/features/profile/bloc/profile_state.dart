part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _ProfileInitial;
  const factory ProfileState.failed(String message) = _ProfileFailed;
  const factory ProfileState.userGot(String userName, String avatarUrl) =
      _UserGot;
  const factory ProfileState.achievementsScreen() = _AchievementsScreen;
  const factory ProfileState.statisticsScreen() = _StatisticsScreen;
  const factory ProfileState.activitiesScreen() = _ActivitiesScreen;
}
