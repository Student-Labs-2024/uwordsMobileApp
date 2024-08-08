import 'package:flutter/material.dart';
import 'package:uwords/features/global/widgets/bubble_button.dart';
import 'package:uwords/features/global/widgets/custom_image_network_view.dart';
import 'package:uwords/features/learn/data/constants/learn_paddings.dart';
import 'package:uwords/features/learn/data/constants/learn_sizes.dart';
import 'package:uwords/features/global/data/models/pair_model.dart';
import 'package:uwords/features/learn/data/constants/learn_styles.dart';
import 'package:uwords/features/learn/data/constants/other_learn_constants.dart';
import 'package:uwords/features/learn/domain/models/word_model.dart';
import 'package:uwords/features/learn/presentation/widgets/learn_bubble_button.dart';
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
      required this.progress});

  final WordModel word;
  final List<Pair<String, int>> letters;
  final VoidCallback goNextScreen;
  final VoidCallback quit;
  final int progress;

  @override
  State<LearnWordPage2> createState() => LearnWordPage2State();
}

class LearnWordPage2State extends State<LearnWordPage2> {
  String answer = '';
  bool isAnswerCorrect = false;

  String inputState = OtherLearnConstants.stateZero;

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
    return false;
  }

  void onPressBottomButton() {
    if (!isAnswerCorrect) {
      if (answer == widget.word.enValue) {
        setState(() {
          isAnswerCorrect = true;
          inputState = OtherLearnConstants.stateSuccess;
        });
      } else {
        setState(() {
          inputState = OtherLearnConstants.stateWrong;
        });
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(AppLocalizations.of(context).wrongAnswer)));
      }
    } else {
      widget.goNextScreen();
    }
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
                        clipRadius: 20),
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
                      children: widget.letters
                          .map((letterInfo) => LetterButton(
                              letterInfo: letterInfo,
                              onPressed: pressLetterButton))
                          .toList(),
                    ),
                    const Spacer(),
                    BubbleButton(null,
                        maximumWidth: MediaQuery.of(context).size.height,
                        text: isAnswerCorrect
                            ? AppLocalizations.of(context).next
                            : AppLocalizations.of(context).check,
                        onPressed: onPressBottomButton,
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
