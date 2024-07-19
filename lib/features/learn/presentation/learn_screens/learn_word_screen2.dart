import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uwords/features/learn/data/undesign_constants.dart';
import 'package:uwords/theme/learn_decoration_button_styles.dart';
import 'package:uwords/features/learn/domain/models/word_model.dart';
import 'package:uwords/features/learn/presentation/widgets/big_button.dart';
import 'package:uwords/features/learn/presentation/widgets/letter_button.dart';
import 'package:uwords/features/learn/presentation/widgets/word_input.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LearnWordPage2 extends StatefulWidget {
  const LearnWordPage2({super.key, required this.word});

  final WordModel word;

  @override
  State<LearnWordPage2> createState() => LearnWordPage2State();
}

class LearnWordPage2State extends State<LearnWordPage2> {
  String answer = '';
  bool answerCorrect = false;

  List<String> letters = [];
  @override
  void initState() {
    super.initState();
    letters = widget.word.enValue.split('');
  }

  pressLetterButton(String letter, bool selected) {
    if (selected) {
      setState(() {
        answer += letter;
      });
    } else {
      int lastIndex = answer.lastIndexOf(letter);
      if (lastIndex != -1) {
        setState(() {
          answer =
              answer.substring(0, lastIndex) + answer.substring(lastIndex + 1);
        });
      }
    }

    if (answer.length == widget.word.enValue.length) {
      if (answer == widget.word.enValue) {
        answerCorrect = true;
      }
    } else {
      answerCorrect = false;
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
                const SizedBox(
                  height: UnDesignedConstants.smallEmptySpace,
                ),
                Container(
                  height: UnDesignedConstants.smallContainer,
                  width: UnDesignedConstants.smallContainer,
                  decoration: LearnDecorButtStyle.wordScreenPopBackBDS,
                  child: ElevatedButton(
                    onPressed: () => context.pop(),
                    style: LearnDecorButtStyle.wordScreenPopBackBS,
                    child: const Icon(
                      Icons.arrow_back,
                      color: AppColors.blackColor,
                      size: UnDesignedConstants.smallIcon,
                    ),
                  ),
                ),
                const SizedBox(
                  height: UnDesignedConstants.mediumEmptySpace,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.network(
                    widget.word.pictureLink,
                    fit: BoxFit.contain,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) {
                        return child;
                      } else {
                        return SizedBox(
                          width: UnDesignedConstants.imageSize *
                              MediaQuery.of(context).size.width,
                          height: UnDesignedConstants.heightOfCentralElement,
                          child: const Center(
                            child: CircularProgressIndicator(
                              color: AppColors.mainColor,
                            ),
                          ),
                        );
                      }
                    },
                    width: UnDesignedConstants.imageSize *
                        MediaQuery.of(context).size.width,
                    height: UnDesignedConstants.imageSize,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: UnDesignedConstants.smallEmptySpace),
              child: WordInput(text: answer),
            ),
            Wrap(
              spacing: UnDesignedConstants.smallSpacing,
              runSpacing: UnDesignedConstants.smallSpacing,
              children: letters
                  .map((l) =>
                      LetterButton(text: l, onPressed: pressLetterButton))
                  .toList(),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  bottom: UnDesignedConstants.bottomPadding),
              child: BigButton(
                text: AppLocalizations.of(context).next,
                onPressed: () {
                  if (answerCorrect) {
                    context.go("/learn/screen1/screen2/screen3",
                        extra: widget.word);
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
