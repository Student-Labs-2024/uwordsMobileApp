import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:uwords/features/learn/bloc/training_bloc/training_bloc.dart';
import 'package:uwords/features/learn/presentation/learn_screens/successful_word_screen.dart';
import 'package:uwords/features/learn/presentation/learn_screens/learn_word_screen1.dart';
import 'package:uwords/features/learn/presentation/learn_screens/learn_word_screen2.dart';
import 'package:uwords/features/learn/presentation/learn_screens/learn_word_screen3.dart';
import 'package:uwords/features/learn/presentation/learn_screens/learn_word_screen4.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LearnCoreScreen extends StatefulWidget {
  const LearnCoreScreen({super.key});

  @override
  State<LearnCoreScreen> createState() => LearnCoreScreenState();
}

class LearnCoreScreenState extends State<LearnCoreScreen> {
  void goSuccessfulScreen() {
    context.read<TrainingBloc>().add(const TrainingEvent.goSuccessfulScreen());
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
            screen1: (word) => LearnWordPage1(
              word: word,
              goNextScreen: goNextScreen,
              quit: quit,
              progress: 65,
            ),
            screen2: (word, letters) => LearnWordPage2(
              word: word,
              letters: letters,
              goNextScreen: goSuccessfulScreen,
              quit: quit,
              progress: 65,
            ),
            screen3: (word) => LearnWordPage3(
                word: word, goNextScreen: goSuccessfulScreen, quit: quit),
            screen4: (word, selectableWords) => LearnWordPage4(
                word: word,
                selectableWords: selectableWords,
                goNextScreen: goSuccessfulScreen,
                quit: quit),
            finalScreen: () => Center(
                child: Text(AppLocalizations.of(context).congratulations)),
            success: (word) => SuccessfulWordPage(
                word: word, goNextScreen: goNextScreen, quit: quit),
            orElse: () =>
                Center(child: Text(AppLocalizations.of(context).unknowError)),
          );
        },
      ),
    );
  }
}
