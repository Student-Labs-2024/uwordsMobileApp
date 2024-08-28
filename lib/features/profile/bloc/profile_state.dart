part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _ProfileInitialState;
  const factory ProfileState.failed(String message) = _ProfileFailedState;
  const factory ProfileState.gotInfo(
      String userName,
      String avatarUrl,
      List<Subtopic> almostLearned,
      List<Subtopic> learned,
      List<AchievementCategoryModel> achievements,
      Metrics metrics) = _GotInfoState;
}
