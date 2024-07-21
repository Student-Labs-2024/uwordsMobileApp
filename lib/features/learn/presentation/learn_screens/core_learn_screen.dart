import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:uwords/features/learn/bloc/training_bloc/training_bloc.dart';
import 'package:uwords/features/learn/domain/models/word_model.dart';
import 'package:uwords/features/learn/presentation/learn_screens/successful_word_screen.dart';
import 'package:uwords/features/main/data/models/pair_model.dart';
import 'package:uwords/features/learn/presentation/learn_screens/learn_word_screen1.dart';
import 'package:uwords/features/learn/presentation/learn_screens/learn_word_screen2.dart';
import 'package:uwords/features/learn/presentation/learn_screens/learn_word_screen3.dart';
import 'package:uwords/features/learn/presentation/learn_screens/learn_word_screen4.dart';

class LearnCoreScreen extends StatefulWidget {
  const LearnCoreScreen({super.key});

  @override
  State<LearnCoreScreen> createState() => LearnCoreScreenState();
}

class LearnCoreScreenState extends State<LearnCoreScreen> {
  @override
  void initState() {
    super.initState();
  }

  void goNextScreen() {
    context.read<TrainingBloc>().add(const TrainingEvent.nextStep());
  }

  void quit() {
    context.go("/learn");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<TrainingBloc, TrainingState>(
        listener: (context, state) {},
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            screen1: (word) =>
                LearnWordPage1(word: word, goNextScreen: goNextScreen),
            screen2: (word, letters) => LearnWordPage2(
                word: word, letters: letters, goNextScreen: goNextScreen),
            screen3: (word) =>
                LearnWordPage3(word: word, goNextScreen: goNextScreen),
            screen4: (word, attendants) => LearnWordPage4(
                word: word, attendants: attendants, goNextScreen: goNextScreen),
            finalScreen: () =>
                const Center(child: Text('Ты прошел все слова! молодец!')),
            success: (word) => SuccessfulWordPage(word: word),
            orElse: () => const Center(child: Text('CoreLogicScreen')),
          );
        },
      ),
    );
  }
}
