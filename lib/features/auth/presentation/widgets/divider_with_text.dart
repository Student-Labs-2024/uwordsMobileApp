import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:uwords/theme/app_text_styles.dart';

class DividerWithText extends StatelessWidget {
  final String text;
  final double maximumWidth;
  const DividerWithText({super.key, required this.text, required this.maximumWidth});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: maximumWidth * 0.35,
          height: 1,
          child: const ColoredBox(
            color: AppColors.darkMainColor,
          ),
        ),
        const Spacer(),
        Text(text, style: AppTextStyles.authSmallText,),
        const Spacer(),
        SizedBox(
          width: maximumWidth * 0.35,
          height: 1,
          child: const ColoredBox(
            color: AppColors.darkMainColor,
          ),
        )
      ],
    );
  }
}
