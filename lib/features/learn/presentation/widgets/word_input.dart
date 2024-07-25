import 'package:flutter/material.dart';
import 'package:uwords/features/learn/data/constants/learn_paddings.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:uwords/theme/learn_text_styles.dart';

class WordInput extends StatelessWidget {
  const WordInput({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: LearnPaddings.inputHorizontal,
          vertical: LearnPaddings.inputVertical),
      width: double.infinity,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: AppColors.lightgrayColor,
          width: 1,
        ),
      ),
      child: Text(
        text,
        style: LearnTextStyles.wordScreenTextInput,
      ),
    );
  }
}
