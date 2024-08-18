import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:uwords/features/learn/bloc/learning_bloc/learning_bloc.dart';
import 'package:uwords/features/learn/bloc/training_bloc/training_bloc.dart';
import 'package:uwords/features/learn/data/constants/other_learn_constants.dart';
import 'package:uwords/features/learn/presentation/learn_screens/final_learn_screen.dart';
import 'package:uwords/features/learn/presentation/learn_screens/learn_word_screen1.dart';
import 'package:uwords/features/learn/presentation/learn_screens/learn_word_screen2.dart';
import 'package:uwords/features/learn/presentation/learn_screens/learn_word_screen3.dart';
import 'package:uwords/features/learn/presentation/learn_screens/learn_word_screen4.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:uwords/features/learn/presentation/learn_screens/loading_screen.dart';
import 'package:uwords/features/learn/presentation/widgets/custom_bottom_sheet.dart';

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
    context.read<LearningBloc>().add(LearningEvent.getTopics(
        AppLocalizations.of(context).inProgressTopicName));
    context.go("/learn");
    showBottomSheet = false;
  }

  bool showBottomSheet = false;
  String bsTitle = '';
  String bsSubtitle = '';
  String bsButtomText = '';
  String bsState = '';

  String lastBottomSheetState = OtherLearnConstants.stateZero;
  void bsOnpressed() {
    setState(() {
      showBottomSheet = false;
    });
    if (lastBottomSheetState != OtherLearnConstants.stateCantHear) {
      goNextScreen();
    }
  }

  void activateCantHear() {
    bsTitle = AppLocalizations.of(context).hearOff;
    bsSubtitle = AppLocalizations.of(context).wilReturn;
    bsButtomText = AppLocalizations.of(context).good;
    bsState = OtherLearnConstants.stateCantHear;
  }

  void activateCantSpeak() {
    bsTitle = AppLocalizations.of(context).hearOff;
    bsSubtitle = AppLocalizations.of(context).wilReturn;
    bsButtomText = AppLocalizations.of(context).good;
    bsState = OtherLearnConstants.stateCantSpeak;
  }

  bool activateWrongAnswer() {
    setState(() {
      hp--;
    });
    if (hp < 1) {
      return true;
    }
    bsTitle = AppLocalizations.of(context).wrongAnswer;
    bsSubtitle = AppLocalizations.of(context).willCan;
    bsButtomText = AppLocalizations.of(context).next;
    bsState = OtherLearnConstants.stateWrong;
    return false;
  }

  void activateSuccessAnswer() {
    bsTitle = AppLocalizations.of(context).allGood;
    bsSubtitle = AppLocalizations.of(context).beautiful;
    bsButtomText = AppLocalizations.of(context).next;
    bsState = OtherLearnConstants.stateSuccess;
  }

  void activateFinalBottomSheet() {
    bsTitle = AppLocalizations.of(context).stillRepeats;
    bsSubtitle = AppLocalizations.of(context).weWillRemind;
    bsButtomText = AppLocalizations.of(context).finish;
    bsState = OtherLearnConstants.stateFinal;
  }

  void hit() {
    setState(() {
      hp--;
    });
    if (hp < 1) {
      getLoseHelthBottomSheet();
    }
  }

  void getLoseHelthBottomSheet() {
    setState(() {
      bsTitle = AppLocalizations.of(context).onNo;
      bsSubtitle = AppLocalizations.of(context).tryStartAgain;
      bsButtomText = AppLocalizations.of(context).good;
      bsState = OtherLearnConstants.stateLoseHealth;
      showBottomSheet = true;
    });
  }

  void getBottomSheet(String state) {
    lastBottomSheetState = state;
    switch (state) {
      case OtherLearnConstants.stateSuccess:
        activateSuccessAnswer();
        break;
      case OtherLearnConstants.stateWrong:
        if (activateWrongAnswer()) {
          getLoseHelthBottomSheet();
          return;
        }
        break;
      case OtherLearnConstants.stateCantHear:
        context.read<TrainingBloc>().add(const TrainingEvent.cantHear());
        activateCantHear();
        break;
      case OtherLearnConstants.stateCantSpeak:
        context.read<TrainingBloc>().add(const TrainingEvent.cantSpeak());
        activateCantSpeak();
        break;
      case OtherLearnConstants.stateFinal:
        activateFinalBottomSheet();
      default:
        setState(() {
          showBottomSheet = false;
        });
        return;
    }
    setState(() {
      showBottomSheet = true;
    });
  }

  int hp = OtherLearnConstants.maxHP;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<TrainingBloc, TrainingState>(
        listener: (context, state) {
          state.maybeWhen(
              initial: () {}, loading: () {}, failed: (e) {}, orElse: () {});
        },
        builder: (context, state) {
          return Stack(children: [
            state.maybeWhen(
              initial: () => const LoadingScreen(),
              loading: () => const LoadingScreen(),
              screen1: (valueKey, word, progress) => LearnWordPage1(
                key: valueKey,
                word: word,
                goNextScreen: goNextScreen,
                quit: quit,
                progress: progress,
                hp: hp,
              ),
              screen2: (valueKey, word, letters, progress) => LearnWordPage2(
                key: valueKey,
                word: word,
                letters: letters,
                goNextScreen: getBottomSheet,
                quit: quit,
                progress: progress,
                hp: hp,
                hit: hit,
              ),
              screen3: (valueKey, word, progress) => LearnWordPage3(
                key: valueKey,
                word: word,
                goNextScreen: getBottomSheet,
                quit: quit,
                progress: progress,
                hp: hp,
              ),
              screen4:
                  (valueKey, isCantHear, word, selectableWords, progress) =>
                      LearnWordPage4(
                key: valueKey,
                word: word,
                selectableWords: selectableWords,
                goNextScreen: getBottomSheet,
                quit: quit,
                progress: progress,
                hp: hp,
                isCantHear: isCantHear,
              ),
              finalScreen: (valueKey, words, newProgress, progress) =>
                  FinalLearnScreen(
                      key: valueKey,
                      words: words,
                      newProgress: newProgress,
                      quit: quit,
                      goNextScreen: getBottomSheet,
                      progress: progress,
                      hp: hp),
              orElse: () =>
                  Center(child: Text(AppLocalizations.of(context).unknowError)),
            ),
            showBottomSheet
                ? CustomBottomSheet(
                    onPressed:
                        (bsState == OtherLearnConstants.stateLoseHealth ||
                                bsState == OtherLearnConstants.stateFinal)
                            ? quit
                            : bsOnpressed,
                    title: bsTitle,
                    state: bsState,
                    buttonText: bsButtomText,
                    subtitle: bsSubtitle,
                  )
                : const SizedBox(),
          ]);
        },
      ),
    );
  }
}
