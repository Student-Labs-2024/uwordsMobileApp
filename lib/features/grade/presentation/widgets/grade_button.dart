import 'package:flutter/material.dart';
import 'package:uwords/features/global/presentation/widgets/constants/global_sizes.dart';
import 'package:uwords/features/grade/presentation/constants/grade_sizes.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:uwords/theme/app_text_styles.dart';

class GradeButton extends StatelessWidget {
  const GradeButton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  final VoidCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * GradeSizes.buttonHeight,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: AppColors.gradeButtonGradient,
        borderRadius: BorderRadius.all(
          Radius.circular(GlobalSizes.borderRadiusMedium),
        ),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: AppTextStyles.gradeButton,
        ),
      ),
    );
  }
}
