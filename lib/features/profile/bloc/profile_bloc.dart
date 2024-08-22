import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uwords/features/auth/data/repository/interface_user_repository.dart';
import 'package:uwords/features/auth/domain/user_auth_dto.dart';
import 'package:uwords/features/global/domain/achievement.dart';
import 'package:uwords/features/global/domain/metrics.dart';
import 'package:uwords/features/learn/data/repositores/interface_words_repository.dart';
import 'package:uwords/common/utils/tokens.dart';
import 'package:uwords/features/learn/domain/models/subtopic_model.dart';

part 'profile_bloc.freezed.dart';
part 'profile_state.dart';
part 'profile_event.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final IUserRepository userRepository;
  final IWordsRepository wordsRepository;

  ProfileBloc({required this.userRepository, required this.wordsRepository})
      : super(const ProfileState.initial()) {
    on<_GetUserInfo>(_handleGetUserInfo);
  }

  Future<void> _handleGetUserInfo(
      _GetUserInfo event, Emitter<ProfileState> emit) async {
    UserAuthDto currentUserInfo = await userRepository.getCurrentUserInfo();
    String userName = currentUserInfo.username;
    String avatarUrl = currentUserInfo.avatarUrl;

    Metrics metrics = currentUserInfo.metricsDto.toModel();
    List<AchievementInfoModel> achievements =
        currentUserInfo.achievements.toModel();

    String accessToken = await userRepository.getCurrentUserAccessToken();
    await checkTokenExpirationAndUpdateIfNeed(
        accessToken: accessToken, userRepository: userRepository);
    List<Subtopic> subtopics =
        await wordsRepository.getAllSubtopics(accessToken: accessToken);
    List<Subtopic> almostLearned = [];
    List<Subtopic> learned = [];

    for (Subtopic st in subtopics) {
      if (st.progress == 100) {
        learned.add(st);
      } else if (st.progress > 50) {
        almostLearned.add(st);
      }
    }

    emit(ProfileState.gotInfo(
        userName, avatarUrl, almostLearned, learned, achievements, metrics));
  }
}
