import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:uwords/features/learn/bloc/training_bloc/training_bloc.dart';
import 'package:uwords/features/learn/domain/models/word_model.dart';
import 'package:uwords/features/learn/domain/models/words_pair_model.dart';
import 'package:uwords/features/learn/presentation/learn_screens/learn_word_screen1.dart';
import 'package:uwords/features/learn/presentation/learn_screens/learn_word_screen2.dart';
import 'package:uwords/features/learn/presentation/learn_screens/learn_word_screen4.dart';

class LearnCoreScreen extends StatefulWidget {
  const LearnCoreScreen({super.key});

  @override
  State<LearnCoreScreen> createState() => LearnCoreScreenState();
}

class LearnCoreScreenState extends State<LearnCoreScreen> {
  List<WordModel> unTrainedWords = [];
  List<WordModel> savedWords = [];
  final random = Random();

  int screenIndex = -1;

  void selectScreen() {
    if (unTrainedWords.length <= 1) {
      setState(() {
        screenIndex = 5;
      });
    } else {
      setState(() {
        screenIndex = random.nextInt(4) + 1;
      });
    }
  }

  WordModel selectCurrentWord() {
    int selectedIndex = random.nextInt(unTrainedWords.length);
    WordModel tempWord = unTrainedWords[selectedIndex];
    unTrainedWords.removeAt(selectedIndex);
    return tempWord;
  }

  WordsPairModel selectWordAndAttendants() {
    WordModel selectedWord = selectCurrentWord();
    List<WordModel> wordAttendants = [];

    List<WordModel> tempWords = savedWords;
    tempWords.remove(selectedWord);

    for (int i = 0; i < 3; i++) {
      int selectedIndex = random.nextInt(tempWords.length);
      wordAttendants.add(tempWords[selectedIndex]);
      tempWords.removeAt(selectedIndex);
    }

    WordsPairModel result = WordsPairModel(
        wordAttendants: wordAttendants, selectedWord: selectedWord);

    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<TrainingBloc, TrainingState>(
        listener: (context, state) {
          state.maybeWhen(
              ready: (words) {
                savedWords = words;
                unTrainedWords = words;
              },
              orElse: () => {});
        },
        builder: (context, state) {
          return state.maybeWhen(
            loading: (words) => const Center(
              child: CircularProgressIndicator(),
            ),
            ready: (words) {
              if (screenIndex == 1) {
                return LearnWordPage1(word: selectCurrentWord());
              } else if (screenIndex == 2) {
                return LearnWordPage2(word: selectCurrentWord());
              } else if (screenIndex == 3) {
                return LearnWordPage1(word: selectCurrentWord());
              } else if (screenIndex == 4) {
                return LearnWordPage4(wordsPair: selectWordAndAttendants());
              }
              return const Text('Успех!');
            },
            orElse: () => const Center(child: Text('CoreLogicScreen')),
          );
        },
      ),
    );
  }
}
