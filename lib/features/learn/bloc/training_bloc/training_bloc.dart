import 'dart:developer' as developer;
import 'dart:io';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uwords/common/exceptions/login_exceptions.dart';
import 'package:uwords/common/exceptions/training_exceptions.dart';
import 'package:uwords/common/utils/tokens.dart';
import 'package:uwords/features/auth/data/repository/interface_user_repository.dart';
import 'package:uwords/features/learn/presentation/constants/other_learn_constants.dart';
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

  List<WordInfo> words = [];

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

  int countOfScreens = 0;
  int progress = 0;
  int step = 0;

  TrainingBloc({required this.wordsRepository, required this.userRepository})
      : super(const TrainingState.initial()) {
    on<_SetTopicEvent>(_getWordsFromTitle);
    on<_SetSubtopicEvent>(_getWordsFromSubtitle);
    on<_NextStepEvent>(_eventNextTrainingStep);
    on<_StartStudyEvent>(_handleStartStudy);
    on<_CantHearEvent>(_setCantHear);
    on<_CantSpeakEvent>(_setCantSpeak);
  }

  void _setCantHear(_CantHearEvent event, Emitter<TrainingState> emit) {
    cantHearLimit = cantHearLimit
        .add(const Duration(minutes: OtherLearnConstants.cantMinutes));
    isCantHear = true;
  }

  void _setCantSpeak(_CantSpeakEvent event, Emitter<TrainingState> emit) {
    cantSpeakLimit = cantSpeakLimit
        .add(const Duration(minutes: OtherLearnConstants.cantMinutes));
    isCantSpeak = true;
  }

  void _getWordsFromTitle(_SetTopicEvent event, Emitter<TrainingState> emit) {
    words = [];
    Topic topic = event.topic;
    for (var subtopic in topic.subtopics) {
      for (var wordInfo in subtopic.wordInfoList) {
        words.add(wordInfo);
      }
    }
    _startTraining(emit);
  }

  void _getWordsFromSubtitle(
      _SetSubtopicEvent event, Emitter<TrainingState> emit) {
    words = [];
    Subtopic subtopic = event.subtopic;
    for (var wordInfo in subtopic.wordInfoList) {
      words.add(wordInfo);
    }
    _startTraining(emit);
  }

  void _startTraining(Emitter<TrainingState> emit) {
    wordScreen = [];
    currentWordScreenIndex = -1;
    keys = [];
    _dropToDefaultZeroValue();
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
    countOfScreens = words.length * OtherLearnConstants.countOfTypesOfTests;
    step = OtherLearnConstants.maxProgress ~/ countOfScreens;
    progress -= step;
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
    tempKeys.add(ValueKey('$tempTime finalScreen'));
    keys = tempKeys;
  }

  List<String> getSelectableImages() {
    List<String> selectableImages = [];
    selectableImages.addAll(
        words[wordScreen[currentWordScreenIndex].first].additionalPictures);
    selectableImages
        .add(words[wordScreen[currentWordScreenIndex].first].word.pictureLink);
    selectableImages.shuffle();
    return selectableImages;
  }

  List<Pair<String, int>> getLetters() {
    List<String> letters =
        words[wordScreen[currentWordScreenIndex].first].word.enValue.split('');
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
      _NextStepEvent event, Emitter<TrainingState> emit) async {
    await _nextTrainingStep(emit);
  }

  Future<void> _nextTrainingStep(Emitter<TrainingState> emit) async {
    currentWordScreenIndex++;

    if (currentWordScreenIndex == wordScreen.length) {
      progress = OtherLearnConstants.maxProgress;
      List<WordModel> wordModels = [];
      List<int> newProgress = [];
      List<int> wordsID = [];
      wordModels.addAll(words.map((wordInfo) => wordInfo.word));
      newProgress.addAll(words.map((wordInfo) => wordInfo.progress));
      wordsID.addAll(words.map((wordInfo) => wordInfo.id));
      emit(TrainingState.finalScreen(
          words: wordModels,
          newProgress: newProgress,
          valueKey: keys.last,
          progress: progress));
      String accessToken = await userRepository.getCurrentUserAccessToken();
      await wordsRepository.sendLearnedWords(
          accessToken: accessToken, wordsId: wordsID);
      return;
    }
    switch (wordScreen[currentWordScreenIndex].second) {
      case 1:
        _calculateProgress();
        emit(TrainingState.screen1(
            valueKey: keys[currentWordScreenIndex],
            progress: progress,
            word: words[wordScreen[currentWordScreenIndex].first].word));
        break;
      case 2:
        _calculateProgress();
        emit(TrainingState.screen2(
            valueKey: keys[currentWordScreenIndex],
            progress: progress,
            word: words[wordScreen[currentWordScreenIndex].first].word,
            letters: getLetters()));
        break;
      case 3:
        if (isCantSpeak) {
          if (cantSpeakLimit.isAfter(DateTime.now())) {
            countOfScreens = countOfScreens - words.length;
            _calculateProgress();
            await _nextTrainingStep(emit);
            return;
          }
          countOfScreens =
              words.length * OtherLearnConstants.countOfTypesOfTests;
          isCantSpeak = false;
        }
        _calculateProgress();
        emit(TrainingState.screen3(
            valueKey: keys[currentWordScreenIndex],
            progress: progress,
            word: words[wordScreen[currentWordScreenIndex].first].word));
        break;
      case 4:
        if (isCantHear) {
          if (cantHearLimit.isBefore(DateTime.now())) {
            isCantHear = false;
          }
        }
        _calculateProgress();
        emit(TrainingState.screen4(
            valueKey: keys[currentWordScreenIndex],
            cantHear: isCantHear,
            progress: progress,
            word: words[wordScreen[currentWordScreenIndex].first].word,
            selectableImages: getSelectableImages()));
        break;
    }
  }

  Future<void> _handleStartStudy(
      _StartStudyEvent event, Emitter<TrainingState> emit) async {
    try {
      words = [];
      String accessToken = await userRepository.getCurrentUserAccessToken();
      checkTokenExpirationAndUpdateIfNeed(
          accessToken: accessToken, userRepository: userRepository);
      List<WordInfo> result = await wordsRepository.getWordsForStart(
          accessToken: accessToken,
          topicTitle: event.subtopic.topicTitle,
          subtopicTitle: event.subtopic.subtopicTitle);
      if (result.isEmpty) {
        emit(const TrainingState.failed(
            message: OtherLearnConstants.allLearned));
        return;
      }
      words.addAll(result.map((wordInfo) => wordInfo).toList());
      _startTraining(emit);
    } on Exception catch (e) {
      _emitter = emit;
      _topicTitle = event.subtopic.topicTitle;
      _subtopicTitle = event.subtopic.subtopicTitle;
      addError(e);
    }
  }

  @override
  void onError(Object error, StackTrace stackTrace) async {
    developer.log(error.toString());
    switch (error.runtimeType) {
      case const (OldAccessTokenException):
        String accessToken = await userRepository.refreshAccessToken();
        List<WordInfo> result = await wordsRepository.getWordsForStart(
            accessToken: accessToken,
            topicTitle: _topicTitle,
            subtopicTitle: _subtopicTitle);
        words.addAll(result.map((wordInfo) => wordInfo).toList());
        _startTraining(_emitter);
      case const (SocketException):
        _emitter(const TrainingState.failed(message: 'No Internet'));
      case const (NoEnergyException):
        _emitter(const TrainingState.failed(message: 'No energy'));
    }
    super.onError(error, stackTrace);
  }

  void _calculateProgress() {
    progress = progress + step;
  }

  void _dropToDefaultZeroValue() {
    countOfScreens = 0;
    progress = 0;
    step = 0;
  }
}
