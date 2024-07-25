import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
        height: (MediaQuery.of(context).size.width) * 80 / 375,
        width: (MediaQuery.of(context).size.width) * 80 / 375,
        decoration: fis.BoxDecoration(
          color: AppColors.homePageStartRecord,
          boxShadow: isPressed
              ? MainBoxShadows.recordButtonPressed
              : MainBoxShadows.recordButtonNotPressed,
          borderRadius: BorderRadius.circular(55),
        ),
        child: Center(
            child: SvgPicture.asset(
          isPressed ? AppImageSource.voiceIco : AppImageSource.microphoneIco,
          color: AppColors.darkMainColor,
          width: (MediaQuery.of(context).size.width) * 42 / 375,
        )),
      ),
    );
  }
}
