part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _ProfileInitial;
  const factory ProfileState.failed(String message) = _ProfileFailed;
  const factory ProfileState.gotInfo(String userName, String avatarUrl,
      List<Subtopic> almostLearned, List<Subtopic> learned) = _GotInfo;
}
