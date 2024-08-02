import 'package:flutter/material.dart';
import 'package:uwords/features/learn/data/constants/learn_sizes.dart';
import 'package:uwords/features/global/data/models/pair_model.dart';
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
  Color currentColor = AppColors.lightgrayColor;
  int currentAmount = 0;

  @override
  void initState() {
    currentAmount = widget.letterInfo.second;
    super.initState();
  }

  pressLetterButton() async {
    if (currentColor == AppColors.incorrectChooseColor) return;
    if (widget.onPressed(widget.letterInfo.first, currentAmount)) {
      setState(() {
        currentAmount--;
        currentColor = AppColors.mainColor;
      });
    } else {
      Color tempColor = currentColor;
      setState(() {
        currentColor = AppColors.incorrectChooseColor;
      });
      await Future.delayed(const Duration(milliseconds: 500));
      setState(() {
        currentColor = tempColor;
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
                    height: LearnSizes.letterButtonWrapperWidth,
                    width: LearnSizes.letterButtonHeight,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: currentColor,
                        width: LearnSizes.letterButtonBorderWidth,
                      ),
                    ),
                    child: TextButton(
                      onPressed: pressLetterButton,
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
                            border: Border.all(
                              color: AppColors.blackColor,
                              width: LearnSizes.letterButtonAmountBorderWidth,
                            ),
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
