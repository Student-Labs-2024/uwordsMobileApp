import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uwords/features/global/presentation/widgets/bubble_button.dart';
import 'package:uwords/features/learn/bloc/player_bloc/player_bloc.dart';
import 'package:uwords/features/learn/presentation/constants/learn_paddings.dart';
import 'package:uwords/features/learn/presentation/constants/other_learn_constants.dart';
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
      required this.selectableImages,
      required this.goNextScreen,
      required this.quit,
      required this.progress,
      required this.hp,
      required this.isCantHear});

  final WordModel word;
  final List<String> selectableImages;
  final void Function(String) goNextScreen;
  final VoidCallback quit;
  final int progress;
  final int hp;
  final bool isCantHear;

  @override
  State<LearnWordPage4> createState() => LearnWordPage4State();
}

class LearnWordPage4State extends State<LearnWordPage4> {
  bool isAnswerCorrect = false;
  String currentChoose = '';

  String buttonState = OtherLearnConstants.stateZero;
  String chosedState = OtherLearnConstants.stateActive;

  bool isCantHear = false;

  @override
  void initState() {
    isCantHear = widget.isCantHear;
    super.initState();
  }

  void onPressBottomButton() {
    if (currentChoose == '') return;
    if (currentChoose == widget.word.pictureLink) {
      setState(() {
        isAnswerCorrect = true;
        chosedState = OtherLearnConstants.stateSuccess;
        widget.goNextScreen(OtherLearnConstants.stateSuccess);
      });
    } else {
      setState(() {
        chosedState = OtherLearnConstants.stateWrong;
      });
      widget.goNextScreen(OtherLearnConstants.stateWrong);
    }
  }

  void makeChoice(String wordImage) {
    setState(() {
      if (buttonState == OtherLearnConstants.stateZero) {
        buttonState = OtherLearnConstants.stateActive;
      }
      currentChoose = wordImage;
    });
  }

  void onCantHearTap() {
    widget.goNextScreen(OtherLearnConstants.stateCantHear);
    setState(() {
      isCantHear = true;
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
                          hp: widget.hp,
                          progress: widget.progress,
                          onPressed: widget.quit),
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
                          wordImage: widget.selectableImages[0],
                          onPressed: () =>
                              makeChoice(widget.selectableImages[0]),
                          state: currentChoose == widget.selectableImages[0]
                              ? chosedState
                              : OtherLearnConstants.stateZero,
                        ),
                        ImageCard(
                          wordImage: widget.selectableImages[1],
                          onPressed: () =>
                              makeChoice(widget.selectableImages[1]),
                          state: currentChoose == widget.selectableImages[1]
                              ? chosedState
                              : OtherLearnConstants.stateZero,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ImageCard(
                          wordImage: widget.selectableImages[2],
                          onPressed: () =>
                              makeChoice(widget.selectableImages[2]),
                          state: currentChoose == widget.selectableImages[2]
                              ? chosedState
                              : OtherLearnConstants.stateZero,
                        ),
                        ImageCard(
                          wordImage: widget.selectableImages[3],
                          onPressed: () =>
                              makeChoice(widget.selectableImages[3]),
                          state: currentChoose == widget.selectableImages[3]
                              ? chosedState
                              : OtherLearnConstants.stateZero,
                        ),
                      ],
                    ),
                    if (isCantHear) ...[
                      const Spacer(),
                      Text(
                        widget.word.enValue,
                        style: LearnTextStyles.wordScreenTitle,
                      ),
                    ] else ...[
                      Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height *
                                LearnPaddings.learnPlaysoundButtonTop,
                            bottom: MediaQuery.of(context).size.height *
                                LearnPaddings.learnPlaysoundButtonBottom),
                        child: PlaysoundButton(
                          onPressed: () => context.read<PlayerBloc>().add(
                              PlayerEvent.playAudio(widget.word.audioLink)),
                        ),
                      ),
                      InkWell(
                        onTap: onCantHearTap,
                        child: Text(
                          AppLocalizations.of(context).cantHear,
                          style: AppTextStyles.learnCant,
                        ),
                      ),
                    ],
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
