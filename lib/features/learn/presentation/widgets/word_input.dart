import 'package:flutter/material.dart';
import 'package:uwords/features/global/data/constants/global_shadows.dart';
import 'package:uwords/features/global/data/constants/global_sizes.dart';
import 'package:uwords/features/learn/data/constants/learn_paddings.dart';
import 'package:uwords/features/learn/data/constants/learn_sizes.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:uwords/theme/learn_text_styles.dart';

class WordInput extends StatelessWidget {
  const WordInput({super.key, required this.text, required this.state});
  final String text;
  final String state;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: LearnPaddings.inputHorizontal,
          vertical: LearnPaddings.inputVertical),
      alignment: Alignment.centerLeft,
      height: MediaQuery.of(context).size.height * LearnSizes.wordInputHeight,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.lightgrayColor,
          width: LearnSizes.wordInputBorder,
        ),
        borderRadius: BorderRadius.circular(GlobalSizes.borderRadiusSmall),
        color: AppColors.wordInputBackgroundColor,
        boxShadow: GlobalShadows.basicShadow,
      ),
      child: Center(
        child: Text(
          text,
          style: LearnTextStyles.wordScreenTextInput,
        ),
      ),
    );
  }
}
