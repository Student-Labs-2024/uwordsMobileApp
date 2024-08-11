import 'dart:developer' as developer;
import 'dart:io';
import 'dart:math';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uwords/common/exceptions/login_exceptions.dart';
import 'package:uwords/common/utils/tokens.dart';
import 'package:uwords/features/auth/data/repository/interface_user_repository.dart';
import 'package:uwords/features/learn/data/repositores/interface_words_repository.dart';
import 'package:uwords/features/global/data/models/pair_model.dart';
import 'package:uwords/features/learn/domain/models/subtopic_model.dart';
import 'package:uwords/features/learn/domain/models/topic_model.dart';
import 'package:uwords/features/learn/domain/models/word_model.dart';

part 'training_bloc_state.dart';
part 'training_bloc_event.dart';
part 'training_bloc.freezed.dart';

class TrainingBloc extends Bloc<TrainingEvent, TrainingState> {
  final IWordsRepository wordsRepository;
  final IUserRepository userRepository;
  final random = Random();

  List<WordModel> words = [];

  List<Pair<int, int>> wordScreen = [];
  int currentWordScreenIndex = -1;
  late String _topicTitle;
  late String _subtopicTitle;
  late Emitter<TrainingState> _emitter;

  TrainingBloc({required this.wordsRepository, required this.userRepository})
      : super(const TrainingState.initial()) {
    on<_SetTopic>(_getWordsFromTitle);
    on<_SetSubtopic>(_getWordsFromSubtitle);
    on<_NextStep>(_eventNextTrainingStep);
    on<_GoSuccessfulScreen>(_goSuccessfulScreen);
    on<_StartStudy>(_handleStartStudy);
  }

  void _getWordsFromTitle(_SetTopic event, Emitter<TrainingState> emit) {
    emit(const TrainingState.loading());

    words = [];
    Topic topic = event.topic;
    for (var subtopic in topic.subtopics) {
      for (var wordInfo in subtopic.wordInfoList) {
        words.add(wordInfo.word);
      }
    }
    _startTraining(emit);
  }

  void _getWordsFromSubtitle(_SetSubtopic event, Emitter<TrainingState> emit) {
    emit(const TrainingState.loading());

    words = [];
    Subtopic subtopic = event.subtopic;
    for (var wordInfo in subtopic.wordInfoList) {
      words.add(wordInfo.word);
    }
    _startTraining(emit);
  }

  void _startTraining(Emitter<TrainingState> emit) {
    wordScreen = [];
    currentWordScreenIndex = -1;
    _createTraining();
    _mixTraining();
    _nextTrainingStep(emit);
  }

  void _createTraining() {
    for (int i = 0; i < words.length; i++) {
      wordScreen.add(Pair(i, 1));
    }
    for (int i = 0; i < words.length; i++) {
      wordScreen.add(Pair(i, 2));
      wordScreen.add(Pair(i, 3));
      wordScreen.add(Pair(i, 4));
    }
  }

  void _mixTraining() {
    for (int i = words.length; i < wordScreen.length; i++) {
      int selectedIndex =
          random.nextInt((wordScreen.length - words.length)) + words.length;
      Pair<int, int> temp = wordScreen[selectedIndex];
      wordScreen[selectedIndex] = wordScreen[i];
      wordScreen[i] = temp;
    }
  }

  List<WordModel> getSelectableWords() {
    List<WordModel> selectableWords = [];
    List<WordModel> tempWords = [];
    tempWords.addAll(words);
    selectableWords.add(tempWords[wordScreen[currentWordScreenIndex].first]);
    tempWords.removeAt(wordScreen[currentWordScreenIndex].first);
    for (int i = 0; i < 3; i++) {
      int selectedIndex = random.nextInt(tempWords.length);
      selectableWords.add(tempWords[selectedIndex]);
      tempWords.removeAt(selectedIndex);
    }
    return selectableWords;
  }

  List<Pair<String, int>> getLetters() {
    List<String> letters =
        words[wordScreen[currentWordScreenIndex].first].enValue.split('');
    Map<String, int> letterCounts = {};

    for (String letter in letters) {
      if (letterCounts.containsKey(letter)) {
        letterCounts[letter] = letterCounts[letter]! + 1;
      } else {
        letterCounts[letter] = 1;
      }
    }
    List<Pair<String, int>> result = letterCounts.entries
        .map((entry) => Pair(entry.key, entry.value))
        .toList();

    for (int i = 0; i < result.length; i++) {
      int selectedIndex = random.nextInt(result.length);
      Pair<String, int> temp = result[selectedIndex];
      result[selectedIndex] = result[i];
      result[i] = temp;
    }

    return result;
  }

  void _eventNextTrainingStep(_NextStep event, Emitter<TrainingState> emit) {
    _nextTrainingStep(emit);
  }

  void _nextTrainingStep(Emitter<TrainingState> emit) async {
    currentWordScreenIndex++;
    if (currentWordScreenIndex == wordScreen.length) {
      emit(const TrainingState.finalScreen());
      // TODO check this line after merging
      await wordsRepository.sendLearnedWords(
          accessToken: await userRepository.getCurrentUserAccessToken(),
          wordsId: words.map((word) => word.id).toList());
      return;
    }
    switch (wordScreen[currentWordScreenIndex].second) {
      case 1:
        emit(TrainingState.screen1(
            word: words[wordScreen[currentWordScreenIndex].first]));
        break;
      case 2:
        emit(TrainingState.screen2(
            word: words[wordScreen[currentWordScreenIndex].first],
            letters: getLetters()));
        break;
      case 3:
        emit(TrainingState.screen3(
            word: words[wordScreen[currentWordScreenIndex].first]));
        break;
      case 4:
        emit(TrainingState.screen4(
            word: words[wordScreen[currentWordScreenIndex].first],
            selectableWords: getSelectableWords()));
        break;
    }
  }

  void _goSuccessfulScreen(
      _GoSuccessfulScreen event, Emitter<TrainingState> emit) {
    emit(TrainingState.success(
        word: words[wordScreen[currentWordScreenIndex].first]));
  }

  Future<void> _handleStartStudy(
      _StartStudy event, Emitter<TrainingState> emit) async {
    emit(const TrainingState.loading());
    try {
      words = [];
      String accessToken = await userRepository.getCurrentUserAccessToken();
      checkTokenExpirationAndUpdateIfNeed(
          accessToken: accessToken, userRepository: userRepository);
      List<WordModel> result = await wordsRepository.getWordsForStart(
          accessToken: accessToken,
          topicTitle: event.topicTitle,
          subtopicTitle: event.subtopic.subtopicTitle);
      List<WordModel> placeholders =
          event.subtopic.wordInfoList.map((e) => e.word).toList();
      words.addAll(result.isEmpty ? placeholders.take(4) : result);
      _startTraining(emit);
    } on Exception catch (e) {
      _emitter = emit;
      _topicTitle = event.topicTitle;
      _subtopicTitle = event.subtopic.subtopicTitle;
      addError(e);
    }
  }

  @override
  void onError(Object error, StackTrace stackTrace) async {
    developer.log(error.toString());
    switch (error.runtimeType) {
      case const (OldAccessException):
        String accessToken = await userRepository.refreshAccessToken();
        words.addAll(await wordsRepository.getWordsForStart(
            accessToken: accessToken,
            topicTitle: _topicTitle,
            subtopicTitle: _subtopicTitle));
        _startTraining(_emitter);
      case const (SocketException):
        _emitter(const TrainingState.failed(message: 'No Internet'));
    }
    super.onError(error, stackTrace);
  }
}
