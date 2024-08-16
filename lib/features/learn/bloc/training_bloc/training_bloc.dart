import 'dart:developer' as developer;
import 'dart:io';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uwords/common/exceptions/login_exceptions.dart';
import 'package:uwords/common/utils/tokens.dart';
import 'package:uwords/features/auth/data/repository/interface_user_repository.dart';
import 'package:uwords/features/learn/data/constants/other_learn_constants.dart';
import 'package:uwords/features/learn/data/repositores/interface_words_repository.dart';
import 'package:uwords/features/global/data/models/pair_model.dart';
import 'package:uwords/features/learn/domain/models/subtopic_model.dart';
import 'package:uwords/features/learn/domain/models/topic_model.dart';
import 'package:uwords/features/learn/domain/models/word_info.dart';
import 'package:uwords/features/learn/domain/models/word_model.dart';

part 'training_bloc_state.dart';
part 'training_bloc_event.dart';
part 'training_bloc.freezed.dart';

class TrainingBloc extends Bloc<TrainingEvent, TrainingState> {
  final IWordsRepository wordsRepository;
  final IUserRepository userRepository;
  final random = Random();

  List<WordModel> words = [];
  List<int> wordsInfoIDs = [];

  List<Pair<int, int>> wordScreen = [];
  int currentWordScreenIndex = -1;
  late String _topicTitle;
  late String _subtopicTitle;
  late Emitter<TrainingState> _emitter;

  bool isCantHear = false;
  bool isCantSpeak = false;

  DateTime cantHearLimit = DateTime.now();
  DateTime cantSpeakLimit = DateTime.now();

  List<ValueKey<String>> keys = [];

  TrainingBloc({required this.wordsRepository, required this.userRepository})
      : super(const TrainingState.initial()) {
    on<_SetTopic>(_getWordsFromTitle);
    on<_SetSubtopic>(_getWordsFromSubtitle);
    on<_NextStep>(_eventNextTrainingStep);
    on<_GoSuccessfulScreen>(_goSuccessfulScreen);
    on<_StartStudy>(_handleStartStudy);
    on<_CantHear>(_setCantHear);
    on<_CantSpeak>(_setCantSpeak);
    on<_ZeroHealth>(_setZeroHealthState);
  }

  void _setZeroHealthState(_ZeroHealth event, Emitter<TrainingState> emit) {
    emit(const TrainingState.zeroHealthScreen());
  }

  void _setCantHear(_CantHear event, Emitter<TrainingState> emit) {
    cantHearLimit = cantHearLimit
        .add(const Duration(minutes: OtherLearnConstants.cantMinutes));
    isCantHear = true;
  }

  void _setCantSpeak(_CantSpeak event, Emitter<TrainingState> emit) {
    cantSpeakLimit = cantSpeakLimit
        .add(const Duration(minutes: OtherLearnConstants.cantMinutes));
    isCantSpeak = true;
  }

  void _getWordsFromTitle(_SetTopic event, Emitter<TrainingState> emit) {
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
    keys = [];
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

    List<ValueKey<String>> tempKeys = [];
    DateTime tempTime = DateTime.now();
    for (int i = 0; i < wordScreen.length; i++) {
      tempKeys.add(
          ValueKey('$tempTime ${wordScreen[i].first} ${wordScreen[i].second}'));
    }
    keys = tempKeys;
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

  Future<void> _eventNextTrainingStep(
      _NextStep event, Emitter<TrainingState> emit) async {
    await _nextTrainingStep(emit);
  }

  Future<void> _nextTrainingStep(Emitter<TrainingState> emit) async {
    currentWordScreenIndex++;
    if (currentWordScreenIndex == wordScreen.length) {
      emit(const TrainingState.finalScreen());
      String accessToken = await userRepository.getCurrentUserAccessToken();
      await wordsRepository.sendLearnedWords(
          accessToken: accessToken, wordsId: wordsInfoIDs);
      return;
    }
    switch (wordScreen[currentWordScreenIndex].second) {
      case 1:
        emit(TrainingState.screen1(
            valueKey: keys[currentWordScreenIndex],
            word: words[wordScreen[currentWordScreenIndex].first]));
        break;
      case 2:
        emit(TrainingState.screen2(
            valueKey: keys[currentWordScreenIndex],
            word: words[wordScreen[currentWordScreenIndex].first],
            letters: getLetters()));
        break;
      case 3:
        if (isCantSpeak) {
          if (cantSpeakLimit.isAfter(DateTime.now())) {
            await _nextTrainingStep(emit);
            return;
          }
          isCantSpeak = false;
        }
        emit(TrainingState.screen3(
            valueKey: keys[currentWordScreenIndex],
            word: words[wordScreen[currentWordScreenIndex].first]));
        break;
      case 4:
        if (isCantHear) {
          if (cantHearLimit.isBefore(DateTime.now())) {
            isCantHear = false;
          }
        }
        emit(TrainingState.screen4(
            valueKey: keys[currentWordScreenIndex],
            cantHear: isCantHear,
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
    try {
      words = [];
      String accessToken = await userRepository.getCurrentUserAccessToken();
      checkTokenExpirationAndUpdateIfNeed(
          accessToken: accessToken, userRepository: userRepository);
      List<WordInfo> result = await wordsRepository.getWordsForStart(
          accessToken: accessToken,
          topicTitle: event.topicTitle,
          subtopicTitle: event.subtopic.subtopicTitle);
      List<WordModel> placeholders =
          event.subtopic.wordInfoList.map((e) => e.word).toList();
      wordsInfoIDs.addAll(result.map((wordInfo) => wordInfo.id));
      words.addAll(result.isEmpty
          ? placeholders.take(4)
          : result.map((wordInfo) => wordInfo.word).toList());
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
        List<WordInfo> result = await wordsRepository.getWordsForStart(
            accessToken: accessToken,
            topicTitle: _topicTitle,
            subtopicTitle: _subtopicTitle);
        words.addAll(result.map((wordInfo) => wordInfo.word).toList());
        _startTraining(_emitter);
      case const (SocketException):
        _emitter(const TrainingState.failed(message: 'No Internet'));
    }
    super.onError(error, stackTrace);
  }
}
