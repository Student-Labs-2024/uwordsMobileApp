import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:uwords/features/global/presentation/widgets/constants/global_sizes.dart';
import 'package:uwords/features/learn/presentation/constants/learn_sizes.dart';
import 'package:uwords/features/learn/presentation/constants/other_learn_constants.dart';
import 'package:uwords/features/main/presentation/constants/box_shadows.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:flutter_inset_shadow/flutter_inset_shadow.dart' as fis;
import 'package:uwords/theme/image_source.dart';

class SpeechButton extends StatelessWidget {
  const SpeechButton(
      {super.key,
      required this.isPressed,
      required this.onPressed,
      required this.borderState});
  final bool isPressed;
  final VoidCallback onPressed;
  final String borderState;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height:
            (MediaQuery.of(context).size.width) * LearnSizes.speechButtonSize,
        width:
            (MediaQuery.of(context).size.width) * LearnSizes.speechButtonSize,
        decoration: fis.BoxDecoration(
          color: AppColors.homePageStartRecord,
          boxShadow: isPressed
              ? MainBoxShadows.recordButtonPressed
              : MainBoxShadows.recordButtonNotPressed,
          borderRadius: BorderRadius.circular(GlobalSizes.borderRadiusCircle),
          border: borderState != OtherLearnConstants.stateZero
              ? GradientBoxBorder(
                  gradient: OtherLearnConstants.getGradient(borderState),
                  width: LearnSizes.wordInputBorder,
                )
              : null,
        ),
        child: Center(
            child: SvgPicture.asset(
          isPressed ? AppImageSource.voiceIco : AppImageSource.microphoneIco,
          color: AppColors.darkMainColor,
          width: (MediaQuery.of(context).size.width) *
              LearnSizes.speechButtonIconSize,
        )),
      ),
    );
  }
}
