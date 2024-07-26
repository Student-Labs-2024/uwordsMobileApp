import 'package:flutter/material.dart';
import 'package:uwords/features/learn/data/constants/learn_paddings.dart';
import 'package:uwords/features/learn/data/constants/learn_sizes.dart';
import 'package:uwords/features/main/data/models/pair_model.dart';
import 'package:uwords/features/learn/data/constants/learn_styles.dart';
import 'package:uwords/features/learn/domain/models/word_model.dart';
import 'package:uwords/features/learn/presentation/widgets/big_button.dart';
import 'package:uwords/features/learn/presentation/widgets/letter_button.dart';
import 'package:uwords/features/learn/presentation/widgets/word_input.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LearnWordPage2 extends StatefulWidget {
  const LearnWordPage2(
      {super.key,
      required this.word,
      required this.letters,
      required this.goNextScreen,
      required this.quit});

  final WordModel word;
  final List<Pair<String, int>> letters;
  final VoidCallback goNextScreen;
  final VoidCallback quit;

  @override
  State<LearnWordPage2> createState() => LearnWordPage2State();
}

class LearnWordPage2State extends State<LearnWordPage2> {
  String answer = '';
  bool isAnswerCorrect = false;

  bool pressLetterButton(String letter, int amount) {
    if (amount == 0) return false;
    if (letter == widget.word.enValue[answer.length]) {
      setState(() {
        answer += letter;
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
        });
      } else {
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
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: LearnSizes.arrowBackSize,
                  width: LearnSizes.arrowBackSize,
                  margin: const EdgeInsets.only(
                      left: LearnPaddings.backArrowLeft,
                      top: LearnPaddings.backArrowTop),
                  decoration: LearnStyles.wordScreenPopBackBDS,
                  child: ElevatedButton(
                    onPressed: () => widget.quit,
                    style: LearnStyles.wordScreenPopBackBS,
                    child: const Icon(
                      Icons.arrow_back,
                      color: AppColors.blackColor,
                      size: LearnSizes.arrowBackIconSize,
                    ),
                  ),
                ),
                const SizedBox(
                  height: LearnSizes.topSpacing,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    fit: BoxFit.cover,
                    widget.word.pictureLink,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) {
                        return child;
                      } else {
                        return SizedBox(
                          width: MediaQuery.of(context).size.width *
                              LearnSizes.imageWidth,
                          height: MediaQuery.of(context).size.height *
                              LearnSizes.imageHeight,
                          child: const Center(
                            child: CircularProgressIndicator(
                              color: AppColors.mainColor,
                            ),
                          ),
                        );
                      }
                    },
                    width: MediaQuery.of(context).size.width *
                        LearnSizes.imageWidth,
                    height: MediaQuery.of(context).size.height *
                        LearnSizes.imageHeight,
                  ),
                ),
              ],
            ),
            WordInput(text: answer),
            Wrap(
              spacing: LearnPaddings.wrapSpacing,
              runSpacing: LearnPaddings.wrapSpacing,
              children: widget.letters
                  .map((letterInfo) => LetterButton(
                      letterInfo: letterInfo, onPressed: pressLetterButton))
                  .toList(),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: LearnPaddings.bottom),
              child: BigButton(
                text: isAnswerCorrect
                    ? AppLocalizations.of(context).next
                    : AppLocalizations.of(context).check,
                onPressed: onPressBottomButton,
              ),
            )
          ],
        ),
      ),
    );
  }
}
