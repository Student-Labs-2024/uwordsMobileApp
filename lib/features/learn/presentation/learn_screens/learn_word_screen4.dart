import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uwords/features/learn/bloc/player_bloc/player_bloc.dart';
import 'package:uwords/features/learn/data/constants/learn_paddings.dart';
import 'package:uwords/features/learn/data/constants/learn_sizes.dart';
import 'package:uwords/features/learn/presentation/widgets/image_card.dart';
import 'package:uwords/features/learn/data/constants/learn_styles.dart';
import 'package:uwords/features/learn/domain/models/word_model.dart';
import 'package:uwords/features/learn/presentation/widgets/learn_bubble_button.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LearnWordPage4 extends StatefulWidget {
  const LearnWordPage4(
      {super.key,
      required this.word,
      required this.selectableWords,
      required this.goNextScreen,
      required this.quit});

  final WordModel word;
  final List<WordModel> selectableWords;
  final VoidCallback goNextScreen;
  final VoidCallback quit;

  @override
  State<LearnWordPage4> createState() => LearnWordPage4State();
}

class LearnWordPage4State extends State<LearnWordPage4> {
  bool isAnswerCorrect = false;
  String currentChoose = '';

  void onPressBottomButton() {
    if (!isAnswerCorrect) {
      if (currentChoose == widget.word.enValue) {
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

  void makeChoice(WordModel word) {
    setState(() {
      currentChoose = word.enValue;
    });
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
                SizedBox(
                  child: GridView(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    shrinkWrap: true,
                    children: widget.selectableWords
                        .map((word) => ImageCard(
                              word: word,
                              onPressed: makeChoice,
                              isSelected:
                                  currentChoose == word.enValue ? true : false,
                            ))
                        .toList(),
                  ),
                )
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.width *
                  LearnSizes.speechButtonSize,
              width: MediaQuery.of(context).size.width *
                  LearnSizes.speechButtonSize,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
              ),
              child: IconButton(
                style: IconButton.styleFrom(
                  backgroundColor: AppColors.darkMainColor,
                ),
                onPressed: () => {
                  context
                      .read<PlayerBloc>()
                      .add(PlayerEvent.playAudio(widget.word.audioLink))
                },
                icon: Icon(
                  Icons.volume_up_outlined,
                  color: AppColors.whiteColor,
                  size: MediaQuery.of(context).size.width *
                      LearnSizes.speechButtonIconSize,
                ),
              ),
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
