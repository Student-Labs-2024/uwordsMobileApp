import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uwords/features/global/widgets/bubble_button.dart';
import 'package:uwords/features/learn/bloc/player_bloc/player_bloc.dart';
import 'package:uwords/features/learn/data/constants/learn_paddings.dart';
import 'package:uwords/features/learn/data/constants/other_learn_constants.dart';
import 'package:uwords/features/learn/presentation/widgets/image_card.dart';
import 'package:uwords/features/learn/domain/models/word_model.dart';
import 'package:uwords/features/learn/presentation/widgets/learn_progress_bar.dart';
import 'package:uwords/features/learn/presentation/widgets/playsound_button.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:uwords/theme/app_text_styles.dart';
import 'package:uwords/theme/image_source.dart';
import 'package:uwords/theme/learn_text_styles.dart';

class LearnWordPage4 extends StatefulWidget {
  const LearnWordPage4(
      {super.key,
      required this.word,
      required this.selectableWords,
      required this.goNextScreen,
      required this.quit,
      required this.progress});

  final WordModel word;
  final List<WordModel> selectableWords;
  final VoidCallback goNextScreen;
  final VoidCallback quit;
  final int progress;

  @override
  State<LearnWordPage4> createState() => LearnWordPage4State();
}

class LearnWordPage4State extends State<LearnWordPage4> {
  bool isAnswerCorrect = false;
  String currentChoose = '';

  String buttonState = OtherLearnConstants.stateZero;
  String chosedState = OtherLearnConstants.stateActive;

  void onPressBottomButton() {
    if (currentChoose == '') return;
    if (!isAnswerCorrect) {
      if (currentChoose == widget.word.enValue) {
        setState(() {
          isAnswerCorrect = true;
          chosedState = OtherLearnConstants.stateSuccess;
        });
      } else {
        setState(() {
          chosedState = OtherLearnConstants.stateWrong;
        });
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(AppLocalizations.of(context).wrongAnswer)));
      }
    } else {
      widget.goNextScreen();
    }
  }

  void makeChoice(WordModel word) {
    setState(() {
      if (buttonState == OtherLearnConstants.stateZero) {
        buttonState = OtherLearnConstants.stateActive;
      }
      currentChoose = word.enValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: AppColors.backgroundGradient,
        ),
        child: SafeArea(
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height *
                        LearnPaddings.bubbleBackgroundTop),
                child: Image.asset(
                  fit: BoxFit.cover,
                  AppImageSource.testScreenBubblesChooseScreen,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width *
                        LearnPaddings.wordScreenHorizontal),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: LearnPaddings.learnProgressTop,
                          bottom: LearnPaddings.learnProgressBottom),
                      child: LearnProgressBar(
                          progress: widget.progress, onPressed: widget.quit),
                    ),
                    Text(AppLocalizations.of(context).listenAndChoose,
                        style: LearnTextStyles.wordScreenDescription),
                    SizedBox(
                        height: MediaQuery.of(context).size.height *
                            LearnPaddings.learnChooseDescriptionBottom),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ImageCard(
                          word: widget.selectableWords[0],
                          onPressed: makeChoice,
                          state:
                              currentChoose == widget.selectableWords[0].enValue
                                  ? chosedState
                                  : OtherLearnConstants.stateZero,
                        ),
                        ImageCard(
                          word: widget.selectableWords[1],
                          onPressed: makeChoice,
                          state:
                              currentChoose == widget.selectableWords[1].enValue
                                  ? chosedState
                                  : OtherLearnConstants.stateZero,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ImageCard(
                          word: widget.selectableWords[2],
                          onPressed: makeChoice,
                          state:
                              currentChoose == widget.selectableWords[2].enValue
                                  ? chosedState
                                  : OtherLearnConstants.stateZero,
                        ),
                        ImageCard(
                          word: widget.selectableWords[3],
                          onPressed: makeChoice,
                          state:
                              currentChoose == widget.selectableWords[3].enValue
                                  ? chosedState
                                  : OtherLearnConstants.stateZero,
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height *
                              LearnPaddings.learnPlaysoundButtonTop,
                          bottom: MediaQuery.of(context).size.height *
                              LearnPaddings.learnPlaysoundButtonBottom),
                      child: PlaysoundButton(
                        onPressed: () => context
                            .read<PlayerBloc>()
                            .add(PlayerEvent.playAudio(widget.word.audioLink)),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        AppLocalizations.of(context).cantHear,
                        style: AppTextStyles.learnCant,
                      ),
                    ),
                    const Spacer(),
                    BubbleButton(null,
                        state: buttonState,
                        maximumWidth: MediaQuery.of(context).size.height,
                        onPressed: onPressBottomButton,
                        text: AppLocalizations.of(context).next,
                        textStyle: LearnTextStyles.bubbleButton),
                    const SizedBox(
                      height: LearnPaddings.learnBottom,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
