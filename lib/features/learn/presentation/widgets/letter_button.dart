import 'package:flutter/material.dart';
import 'package:uwords/features/global/presentation/widgets/constants/global_sizes.dart';
import 'package:uwords/features/learn/presentation/constants/learn_paddings.dart';
import 'package:uwords/features/learn/presentation/constants/learn_sizes.dart';
import 'package:uwords/features/global/data/models/pair_model.dart';
import 'package:uwords/features/learn/presentation/constants/other_learn_constants.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:uwords/theme/learn_text_styles.dart';

class LetterButton extends StatefulWidget {
  const LetterButton(
      {super.key, required this.letterInfo, required this.onPressed});
  final Pair<String, int> letterInfo;
  final bool Function(String, int) onPressed;

  @override
  State<LetterButton> createState() => LetterButtonState();
}

class LetterButtonState extends State<LetterButton> {
  LinearGradient? currentGradient;
  int currentAmount = 0;

  @override
  void initState() {
    currentAmount = widget.letterInfo.second;
    super.initState();
  }

  pressLetterButton() async {
    if (currentGradient == AppColors.progressBarGreenGradientBack) return;
    if (widget.onPressed(widget.letterInfo.first, currentAmount)) {
      setState(() {
        currentGradient = AppColors.progressBarGreenGradientBack;
      });
      await Future.delayed(
          const Duration(milliseconds: OtherLearnConstants.milisecGood));
      setState(() {
        currentAmount--;
        currentGradient = null;
      });
    } else {
      setState(() {
        currentGradient = AppColors.progressBarRedGradientBack;
      });
      await Future.delayed(
          const Duration(milliseconds: OtherLearnConstants.milisecWrong));
      setState(() {
        currentGradient = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: currentAmount > 0 ? 1 : 0,
      child: IntrinsicWidth(
        child: IntrinsicHeight(
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomLeft,
                child: GestureDetector(
                  onTap: pressLetterButton,
                  child: Container(
                    margin: const EdgeInsets.only(
                        right: LearnPaddings.letterButtonMarginRight,
                        top: LearnPaddings.letterButtonMarginTop),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius:
                          BorderRadius.circular(GlobalSizes.borderRadiusSmall),
                      gradient: currentGradient,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal:
                              LearnPaddings.letterButtonPaddingHorizontal,
                          vertical: LearnPaddings.letterButtonPaddingVertical),
                      child: Text(
                        widget.letterInfo.first,
                        style: LearnTextStyles.wordScreenTextInput,
                      ),
                    ),
                  ),
                ),
              ),
              //),
              (currentAmount > 0 && widget.letterInfo.second > 1)
                  ? Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: LearnSizes.letterButtonAmountWidth,
                        height: LearnSizes.letterButtonAmountHeight,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              GlobalSizes.borderRadiusCircle),
                          color: AppColors.darkMainColor,
                        ),
                        child: Text(
                          currentAmount.toString(),
                          style: const TextStyle(color: AppColors.whiteColor),
                        ),
                      ),
                    )
                  : const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
