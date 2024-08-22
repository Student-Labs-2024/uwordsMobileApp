import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:uwords/features/global/data/constants/global_sizes.dart';
import 'package:uwords/features/learn/data/constants/learn_paddings.dart';
import 'package:uwords/features/learn/data/constants/learn_sizes.dart';
import 'package:uwords/features/learn/data/constants/other_learn_constants.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:uwords/theme/image_source.dart';
import 'package:uwords/theme/learn_text_styles.dart';

class OnboardingBottomSheet extends StatefulWidget {
  const OnboardingBottomSheet(
      {super.key,
      required this.onPressed,
      required this.title,
      required this.heightMultiplication,
      required this.state,
      this.otherText,
      required this.subtitle});

  final VoidCallback onPressed;
  final double heightMultiplication;
  final String title;
  final String subtitle;
  final String? otherText;
  final String state;

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
    return Container(
      color: AppColors.grayColor.withOpacity(0.3),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * widget.heightMultiplication,
            decoration: BoxDecoration(
              gradient: AppColors.backgroundGradient,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(GlobalSizes.borderRadiusVeryLarge),
                  topRight:
                      Radius.circular(GlobalSizes.borderRadiusVeryLarge)),
              border: widget.state != OtherLearnConstants.stateZero &&
                      widget.state != OtherLearnConstants.stateCantHear &&
                      widget.state != OtherLearnConstants.stateLoseHealth &&
                      widget.state != OtherLearnConstants.stateFinal &&
                      widget.state != OtherLearnConstants.stateCantSpeak
                  ? GradientBoxBorder(
                      gradient: OtherLearnConstants.getGradient(widget.state),
                      width: LearnSizes.wordInputBorder,
                    )
                  : null,
            ),
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
                    style: LearnTextStyles.buttomSheetTitle,
                  ),
                  const SizedBox(
                    height: LearnPaddings.bottomSheetTitleBottom,
                  ),
                  Text(
                    widget.subtitle,
                    textAlign: TextAlign.center,
                    style: LearnTextStyles.buttomSheetSubtitle,
                  ),
                  const Spacer(),
                  if (widget.state ==
                      OtherLearnConstants.stateLoseHealth) ...[
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: LearnPaddings.hpLeft *
                                  LearnSizes.hpSizeModifier *
                                  2),
                          child: SvgPicture.asset(
                            AppImageSource.lostHpIcon,
                            height: LearnSizes.hpHeight *
                                LearnSizes.hpSizeModifier,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: LearnPaddings.hpLeft *
                                  LearnSizes.hpSizeModifier),
                          child: SvgPicture.asset(
                            AppImageSource.lostHpIcon,
                            height: LearnSizes.hpHeight *
                                LearnSizes.hpSizeModifier,
                          ),
                        ),
                        SvgPicture.asset(
                          AppImageSource.lostHpIcon,
                          height:
                              LearnSizes.hpHeight * LearnSizes.hpSizeModifier,
                        ),
                      ],
                    ),
                    const Spacer(),
                  ],
                  Text(""),
                  SizedBox(
                    height: MediaQuery.of(context).size.height *
                        LearnPaddings.bottomSheetBottom,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
