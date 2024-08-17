import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:uwords/features/global/data/constants/global_sizes.dart';
import 'package:uwords/features/global/widgets/bubble_button.dart';
import 'package:uwords/features/learn/data/constants/learn_paddings.dart';
import 'package:uwords/features/learn/data/constants/learn_sizes.dart';
import 'package:uwords/features/learn/data/constants/other_learn_constants.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:uwords/theme/image_source.dart';
import 'package:uwords/theme/learn_text_styles.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet(
      {super.key,
      required this.onPressed,
      required this.title,
      required this.state,
      required this.buttonText,
      required this.subtitle});

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
            height: state == OtherLearnConstants.stateLoseHealth
                ? MediaQuery.of(context).size.height *
                    LearnSizes.bottomSheetLoseHealthHeight
                : MediaQuery.of(context).size.height *
                    LearnSizes.bottomSheetHeight,
            decoration: BoxDecoration(
              gradient: AppColors.backgroundGradient,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(GlobalSizes.borderRadiusVeryLarge),
                  topRight: Radius.circular(GlobalSizes.borderRadiusVeryLarge)),
              border: state != OtherLearnConstants.stateZero &&
                      state != OtherLearnConstants.stateCantHear &&
                      state != OtherLearnConstants.stateLoseHealth &&
                      state != OtherLearnConstants.stateCantSpeak
                  ? GradientBoxBorder(
                      gradient: OtherLearnConstants.getGradient(state),
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
                    title,
                    textAlign: TextAlign.center,
                    style: LearnTextStyles.buttomSheetTitle,
                  ),
                  const SizedBox(
                    height: LearnPaddings.bottomSheetTitleBottom,
                  ),
                  Text(
                    subtitle,
                    textAlign: TextAlign.center,
                    style: LearnTextStyles.buttomSheetSubtitle,
                  ),
                  const Spacer(),
                  if (state == OtherLearnConstants.stateLoseHealth) ...[
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: LearnPaddings.hpLeft *
                                  LearnSizes.hpSizeModifier *
                                  2),
                          child: SvgPicture.asset(
                            AppImageSource.lostHpIcon,
                            height:
                                LearnSizes.hpHeight * LearnSizes.hpSizeModifier,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: LearnPaddings.hpLeft *
                                  LearnSizes.hpSizeModifier),
                          child: SvgPicture.asset(
                            AppImageSource.lostHpIcon,
                            height:
                                LearnSizes.hpHeight * LearnSizes.hpSizeModifier,
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
                  BubbleButton(
                    null,
                    maximumWidth: MediaQuery.of(context).size.width,
                    onPressed: onPressed,
                    text: buttonText,
                    state: state,
                  ),
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
