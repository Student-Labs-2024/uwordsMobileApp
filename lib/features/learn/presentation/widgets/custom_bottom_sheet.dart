import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uwords/features/auth/data/constants/auth_paddings.dart';
import 'package:uwords/features/global/data/constants/global_sizes.dart';
import 'package:uwords/features/global/widgets/bubble_button.dart';
import 'package:uwords/features/learn/data/constants/learn_paddings.dart';
import 'package:uwords/features/learn/data/constants/other_learn_constants.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:uwords/theme/app_text_styles.dart';
import 'package:uwords/theme/image_source.dart';
import 'package:uwords/theme/learn_text_styles.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({
    super.key,
    required this.onPressed,
    required this.title,
    required this.state,
    required this.buttonText,
    required this.subtitle,
  });

  final VoidCallback onPressed;
  final String title;
  final String subtitle;
  final String buttonText;
  final String state;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.grayColor.withOpacity(0.3),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 246 / 812,
            decoration: const BoxDecoration(
                gradient: AppColors.backgroundGradient,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(GlobalSizes.borderRadiusVeryLarge),
                    topRight:
                        Radius.circular(GlobalSizes.borderRadiusVeryLarge))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  const SizedBox(
                    height: LearnPaddings.bottomSheetTop,
                  ),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: LearnTextStyles.buttomSheetTitle,
                  ),
                  const SizedBox(
                    height: LearnPaddings.bottomSheetTitleBottom,
                  ),
                  Text(
                    subtitle,
                    style: LearnTextStyles.buttomSheetSubtitle,
                  ),
                  const SizedBox(
                    height: LearnPaddings.bottomSheetTop,
                  ),
                  BubbleButton(null,
                      maximumWidth: MediaQuery.of(context).size.width,
                      onPressed: onPressed,
                      text: buttonText)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
