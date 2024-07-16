import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uwords/features/main/data/constants/box_shadows.dart';
import 'package:uwords/features/main/data/constants/home_page_sizes.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:flutter_inset_shadow/flutter_inset_shadow.dart' as fis;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:uwords/theme/image_source.dart';
import 'package:uwords/theme/app_text_styles.dart';

class RecordButton extends StatelessWidget {
  const RecordButton(
      {super.key, required this.isPressed, required this.onPressed});
  final bool isPressed;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          AppLocalizations.of(context).press,
          style: AppTextStyles.recordButtonTitle,
        ),
        Text(
          isPressed
              ? AppLocalizations.of(context).toStopRecording
              : AppLocalizations.of(context).toStartRecording,
          style: AppTextStyles.recordButtonSubTitle,
        ),
        const SizedBox(
          height: HomePageComponentSizes.playButtonSpacing,
        ),
        GestureDetector(
          onTap: onPressed,
          child: Container(
            height: (MediaQuery.of(context).size.width) *
                HomePageComponentSizes.playButtonSize,
            width: (MediaQuery.of(context).size.width) *
                HomePageComponentSizes.playButtonSize,
            decoration: fis.BoxDecoration(
              color: AppColors.homePageStartRecord,
              boxShadow: isPressed
                  ? MainBoxShadows.recordButtonPressed
                  : MainBoxShadows.recordButtonNotPressed,
              borderRadius: BorderRadius.circular(55),
            ),
            child: Center(
                child: SvgPicture.asset(
              isPressed
                  ? AppImageSource.voiceIco
                  : AppImageSource.microphoneIco,
              color: AppColors.darkMainColor,
              width: (MediaQuery.of(context).size.width) *
                  HomePageComponentSizes.playButtonIconSize,
            )),
          ),
        ),
      ],
    );
  }
}
