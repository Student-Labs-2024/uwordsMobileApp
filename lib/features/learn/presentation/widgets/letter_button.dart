import 'package:flutter/material.dart';
import 'package:uwords/features/main/data/models/pair_model.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:uwords/theme/learn_text_styles.dart';

class LetterButton extends StatefulWidget {
  const LetterButton(
      {super.key, required this.letterInfo, required this.onPressed});
  final Pair<String, int> letterInfo;
  //final VoidCallback onPressed;
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
    return SizedBox(
      width: 48,
      height: 50,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              height: 44,
              width: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: currentColor,
                  width: 3,
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
                    width: 25,
                    height: 25,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(
                        color: AppColors.blackColor,
                        width: 2,
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
    );

    /*ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(44, 48),
        padding: EdgeInsets.zero,
      ),
      onPressed: pressLetterButton,
      child: Container(
        width: 40,
        height: 44,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: currentColor,
            width: 3,
          ),
        ),
        child: Text(
          widget.letterInfo.first,
          style: LearnTextStyles.wordScreenTextInput,
        ),
      ),
    );*/
  }
}
