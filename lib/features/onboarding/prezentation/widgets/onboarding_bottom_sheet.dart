import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:uwords/features/global/data/constants/global_sizes.dart';
import 'package:uwords/features/learn/data/constants/learn_paddings.dart';
import 'package:uwords/features/learn/data/constants/learn_sizes.dart';
import 'package:uwords/features/onboarding/domain/onboarding_consts.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:uwords/theme/learn_text_styles.dart';

class OnboardingBottomSheet extends StatefulWidget {
  const OnboardingBottomSheet({
    super.key,
    required this.title,
    required this.subtitle,
    required this.heightMultiplication,
    this.otherText,
    this.linkText,
    this.link,
  });

  final double heightMultiplication;
  final String title;
  final String subtitle;
  final String? otherText;
  final String? linkText;
  final String? link;

  @override
  State<OnboardingBottomSheet> createState() => _OnboardingBottomSheetState();
}

class _OnboardingBottomSheetState extends State<OnboardingBottomSheet> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height:
              MediaQuery.of(context).size.height * widget.heightMultiplication,
          decoration: const BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(GlobalSizes.borderRadiusVeryLarge),
                  topRight: Radius.circular(GlobalSizes.borderRadiusVeryLarge)),
              border: GradientBoxBorder(
                gradient: AppColors.purpleStandartGradient,
                width: LearnSizes.wordInputBorder,
              )),
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: LearnPaddings.bottomSheetHorizontal),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height *
                      LearnPaddings.bottomSheetTop,
                ),
                Text(
                  widget.title,
                  textAlign: TextAlign.center,
                  style: LearnTextStyles.bubbleButton,
                ),
                const SizedBox(
                  height: LearnPaddings.bottomSheetTitleBottom,
                ),
                Text(
                  widget.subtitle,
                  textAlign: TextAlign.center,
                  style: LearnTextStyles.onboardingText,
                ),
                SizedBox(
                    height: widget.otherText == null
                        ? OnboardingConsts.zero
                        : MediaQuery.of(context).size.height *
                            OnboardingConsts.emptySpace),
                Text(
                  widget.otherText ?? "",
                  textAlign: TextAlign.center,
                  style: LearnTextStyles.otherText,
                ),
                SizedBox(
                    height: widget.linkText == null
                        ? OnboardingConsts.zero
                        : MediaQuery.of(context).size.height *
                            OnboardingConsts.smallEmptySpace),
                InkWell(
                  child: Text(
                    widget.linkText ?? "",
                    textAlign: TextAlign.center,
                    style: LearnTextStyles.linkText,
                  ),
                  onTap: () {},
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height *
                      OnboardingConsts.bottomSpace,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
