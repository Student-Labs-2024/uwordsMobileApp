import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:uwords/features/learn/bloc/training_bloc/training_bloc.dart';
import 'package:uwords/features/learn/data/constants/other_learn_constants.dart';
import 'package:uwords/features/learn/presentation/learn_screens/learn_word_screen1.dart';
import 'package:uwords/features/learn/presentation/learn_screens/learn_word_screen2.dart';
import 'package:uwords/features/learn/presentation/learn_screens/learn_word_screen3.dart';
import 'package:uwords/features/learn/presentation/learn_screens/learn_word_screen4.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
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
    context.go("/learn");
  }

  bool showBottomSheet = false;
  String bsTitle = '';
  String bsSubtitle = '';
  String bsButtomText = '';
  String bsState = '';
  void bsOnpressed() {
    setState(() {
      showBottomSheet = false;
    });
    goNextScreen();
  }

  void activateCantHear() {
    bsTitle = AppLocalizations.of(context).hearOff;
    bsSubtitle = AppLocalizations.of(context).wilReturn;
    bsButtomText = AppLocalizations.of(context).good;
    bsState = OtherLearnConstants.stateActive;
  }

  void activateCantTell() {
    bsTitle = AppLocalizations.of(context).hearOff;
    bsSubtitle = AppLocalizations.of(context).wilReturn;
    bsButtomText = AppLocalizations.of(context).good;
    bsState = OtherLearnConstants.stateActive;
  }

  void activateWrongAnswer() {
    bsTitle = AppLocalizations.of(context).wrongAnswer;
    bsSubtitle = AppLocalizations.of(context).willCan;
    bsButtomText = AppLocalizations.of(context).next;
    bsState = OtherLearnConstants.stateWrong;
    hp--;
  }

  void activateSuccessAnswer() {
    bsTitle = AppLocalizations.of(context).allGood;
    bsSubtitle = AppLocalizations.of(context).beautiful;
    bsButtomText = AppLocalizations.of(context).next;
    bsState = OtherLearnConstants.stateSuccess;
  }

  void getBottomSheet(String state) {
    switch (state) {
      case OtherLearnConstants.stateSuccess:
        activateSuccessAnswer();
        break;
      case OtherLearnConstants.stateWrong:
        activateWrongAnswer();
        break;
      case OtherLearnConstants.stateCantHear:
        activateCantHear();
        break;
      case OtherLearnConstants.stateCantTell:
        activateCantTell();
        break;
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

  int progress = -7;
  int hp = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<TrainingBloc, TrainingState>(
        listener: (context, state) {
          state.maybeWhen(
              initial: () {},
              loading: () {},
              failed: (e) {},
              orElse: () {
                progress += 7;
              });
        },
        builder: (context, state) {
          return Stack(children: [
            state.maybeWhen(
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              screen1: (word) => LearnWordPage1(
                word: word,
                goNextScreen: goNextScreen,
                quit: quit,
                progress: progress,
                hp: hp,
              ),
              screen2: (word, letters) => LearnWordPage2(
                word: word,
                letters: letters,
                goNextScreen: getBottomSheet,
                quit: quit,
                progress: progress,
                hp: hp,
              ),
              screen3: (word) => LearnWordPage3(
                word: word,
                goNextScreen: getBottomSheet,
                quit: quit,
                progress: progress,
                hp: hp,
              ),
              screen4: (word, selectableWords) => LearnWordPage4(
                word: word,
                selectableWords: selectableWords,
                goNextScreen: getBottomSheet,
                quit: quit,
                progress: progress,
                hp: hp,
              ),
              finalScreen: () => Center(
                  child: Text(AppLocalizations.of(context).congratulations)),
              orElse: () =>
                  Center(child: Text(AppLocalizations.of(context).unknowError)),
            ),
            showBottomSheet
                ? CustomBottomSheet(
                    onPressed: bsOnpressed,
                    title: bsTitle,
                    state: bsState,
                    buttonText: bsButtomText,
                    subtitle: bsSubtitle)
                : const SizedBox(),
          ]);
        },
      ),
    );
  }
}
