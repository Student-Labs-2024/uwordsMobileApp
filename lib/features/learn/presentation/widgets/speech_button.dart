import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uwords/features/global/data/constants/global_sizes.dart';
import 'package:uwords/features/learn/data/constants/learn_sizes.dart';
import 'package:uwords/features/main/data/constants/box_shadows.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:flutter_inset_shadow/flutter_inset_shadow.dart' as fis;
import 'package:uwords/theme/image_source.dart';

class SpeechButton extends StatelessWidget {
  const SpeechButton(
      {super.key, required this.isPressed, required this.onPressed});
  final bool isPressed;
  final VoidCallback onPressed;

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
