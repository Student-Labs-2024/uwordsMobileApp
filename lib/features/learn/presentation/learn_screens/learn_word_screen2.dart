import 'package:flutter/material.dart';
import 'package:uwords/features/global/presentation/widgets/constants/global_sizes.dart';
import 'package:uwords/features/global/presentation/widgets/bubble_button.dart';
import 'package:uwords/features/global/presentation/widgets/custom_image_network_view.dart';
import 'package:uwords/features/learn/presentation/constants/learn_paddings.dart';
import 'package:uwords/features/learn/presentation/constants/learn_sizes.dart';
import 'package:uwords/features/global/data/models/pair_model.dart';
import 'package:uwords/features/learn/presentation/constants/other_learn_constants.dart';
import 'package:uwords/features/learn/domain/models/word_model.dart';
import 'package:uwords/features/learn/presentation/widgets/learn_progress_bar.dart';
import 'package:uwords/features/learn/presentation/widgets/letter_button.dart';
import 'package:uwords/features/learn/presentation/widgets/word_input.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:uwords/theme/image_source.dart';
import 'package:uwords/theme/learn_text_styles.dart';

class LearnWordPage2 extends StatefulWidget {
  const LearnWordPage2(
      {super.key,
      required this.word,
      required this.letters,
      required this.goNextScreen,
      required this.quit,
      required this.progress,
      required this.hp,
      required this.hit});

  final WordModel word;
  final List<Pair<String, int>> letters;
  final void Function(String) goNextScreen;
  final VoidCallback quit;
  final VoidCallback hit;
  final int progress;
  final int hp;

  @override
  State<LearnWordPage2> createState() => LearnWordPage2State();
}

class LearnWordPage2State extends State<LearnWordPage2> {
  @override
  void initState() {
    currenLetters = widget.letters;
    super.initState();
  }

  String answer = '';
  bool isAnswerCorrect = false;

  String inputState = OtherLearnConstants.stateZero;

  List<Pair<String, int>> currenLetters = [];
  bool pressLetterButton(String letter, int amount) {
    if (amount == 0) return false;
    if (letter == widget.word.enValue[answer.length]) {
      setState(() {
        answer += letter;
        if (answer.length == widget.word.enValue.length) {
          inputState = OtherLearnConstants.stateActive;
        }
      });
      return true;
    }
    widget.hit();
    return false;
  }

  void onPressBottomButton() {
    if (answer == widget.word.enValue) {
      setState(() {
        isAnswerCorrect = true;
        inputState = OtherLearnConstants.stateSuccess;
      });
      widget.goNextScreen(OtherLearnConstants.stateSuccess);
    } else {
      setState(() {
        inputState = OtherLearnConstants.stateWrong;
      });
      widget.goNextScreen(OtherLearnConstants.stateWrong);
    }
  }

  List<Widget> getLetters() {
    return currenLetters
        .map((letterInfo) =>
            LetterButton(letterInfo: letterInfo, onPressed: pressLetterButton))
        .toList();
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
                  AppImageSource.testScreenBubblesInputScreen,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              ListView(
                children: [
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
                        /*Expanded(child: ListView(
                              children: [
                  
                              ],
                            ),
                            ),*/
                        Text(AppLocalizations.of(context).makeWord,
                            style: LearnTextStyles.wordScreenDescription),
                        SizedBox(
                            height: MediaQuery.of(context).size.height *
                                LearnPaddings.learnDescriptionBottom),
                        CustomImageNetworkView(
                            imageSource: widget.word.pictureLink,
                            width: MediaQuery.of(context).size.width *
                                LearnSizes.imageWidth,
                            height: MediaQuery.of(context).size.height *
                                LearnSizes.imageHeight,
                            clipRadius: GlobalSizes.borderRadiusVeryLarge),
                        Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height *
                                  LearnPaddings.learnWordInputTop,
                              bottom: MediaQuery.of(context).size.height *
                                  LearnPaddings.learnWordInputBottom),
                          child: WordInput(
                            text: answer,
                            state: inputState,
                          ),
                        ),
                        Wrap(
                          runSpacing: LearnPaddings.wrapSpacing,
                          children: getLetters(),
                        ),
                        SizedBox(
                          height: LearnPaddings.learnBottom +
                              GlobalSizes.bubbleButtonHeight +
                              MediaQuery.of(context).size.height *
                                  LearnPaddings.learnWordInputBottom,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: LearnPaddings.learnBottom,
                left: MediaQuery.of(context).size.width *
                    LearnPaddings.wordScreenHorizontal,
                child: BubbleButton(null,
                    state: inputState,
                    maximumWidth: MediaQuery.of(context).size.width -
                        2 *
                            MediaQuery.of(context).size.width *
                            LearnPaddings.wordScreenHorizontal,
                    text: isAnswerCorrect
                        ? AppLocalizations.of(context).next
                        : AppLocalizations.of(context).check,
                    onPressed: onPressBottomButton,
                    textStyle: LearnTextStyles.bubbleButton),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
