import 'package:flutter/material.dart';
import 'package:uwords/theme/learn_text_styles.dart';
import 'package:uwords/theme/app_colors.dart';

class BigButton extends StatelessWidget {
  const BigButton({super.key, required this.text, required this.onPressed});
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      height: 64,
      width: double.infinity,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: AppColors.darkMainColor,
              spreadRadius: 1,
              blurRadius: 0,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero,
            backgroundColor: AppColors.mainColor,
            foregroundColor: AppColors.darkMainColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
          child: Text(
            text,
            style: LearnTextStyles.startTraining,
          ),
        ),
      ),
    );
  }
}
