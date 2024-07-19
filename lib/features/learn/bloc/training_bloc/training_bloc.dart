import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uwords/common/utils/tokens.dart';
import 'package:uwords/features/auth/data/repository/interface_user_repository.dart';
import 'package:uwords/features/auth/old_access_token_exception.dart';
import 'package:uwords/features/learn/data/repositores/interface_words_repository.dart';
import 'package:uwords/features/learn/domain/models/subtopic_model.dart';
import 'package:uwords/features/learn/domain/models/topic_model.dart';
import 'package:uwords/features/learn/domain/models/word_model.dart';

part 'training_bloc_state.dart';
part 'training_bloc_event.dart';
part 'training_bloc.freezed.dart';

class TrainingBloc extends Bloc<TrainingEvent, TrainingState> {
  final IWordsRepository wordsRepository;
  final IUserRepository userRepository;

  List<WordModel> words = [];

  TrainingBloc({required this.wordsRepository, required this.userRepository})
      : super(TrainingState.initial(words: [])) {
    on<_SetTopic>(_getWordsFromTitle);
    on<_SetSubtopic>(_getWordsFromSubtitle);
  }

  Future<void> _getWordsFromTitle(
      _SetTopic event, Emitter<TrainingState> emit) async {
    words = [];
    Topic topic = event.topic;
    for (var subtopic in topic.subtopics) {
      for (var wordInfo in subtopic.wordInfoList) {
        words.add(wordInfo.word);
      }
    }
  }

  Future<void> _getWordsFromSubtitle(
      _SetSubtopic event, Emitter<TrainingState> emit) async {
    words = [];
    Subtopic subtopic = event.subtopic;
    for (var wordInfo in subtopic.wordInfoList) {
      words.add(wordInfo.word);
    }
    emit(TrainingState.ready(words: words));
  }
}
