import 'package:flutter/material.dart';
import 'package:uwords/features/global/presentation/widgets/constants/global_sizes.dart';
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
    return currentAmount > 0
        ? SizedBox(
            width: LearnSizes.letterButtonWrapperWidth,
            height: LearnSizes.letterButtonWrapperHeight,
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: Container(
                    height: LearnSizes.letterButtonHeight,
                    width: LearnSizes.letterButtonWidth,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius:
                          BorderRadius.circular(GlobalSizes.borderRadiusSmall),
                      gradient: currentGradient,
                    ),
                    child: TextButton(
                      onPressed: pressLetterButton,
                      style: ButtonStyle(
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                GlobalSizes.borderRadiusSmall),
                          ),
                        ),
                      ),
                      child: Text(
                        widget.letterInfo.first,
                        style: LearnTextStyles.wordScreenTextInput,
                      ),
                    ),
                  ),
                ),
                (currentAmount > 0 && widget.letterInfo.second > 1)
                    ? Positioned(
                        right: 0,
                        top: 0,
                        child: Container(
                          width: LearnSizes.letterButtonAmountWidth,
                          height: LearnSizes.letterButtonAmountHeight,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
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
          )
        : const SizedBox();
  }
}
