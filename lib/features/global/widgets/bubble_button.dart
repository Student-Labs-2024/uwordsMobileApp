import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uwords/features/auth/data/constants/auth_paddings.dart';
import 'package:uwords/features/global/data/constants/global_sizes.dart';
import 'package:uwords/features/learn/data/constants/other_learn_constants.dart';
import 'package:uwords/theme/app_text_styles.dart';
import 'package:uwords/theme/image_source.dart';

class BubbleButton extends StatelessWidget {
  const BubbleButton(
    this.icon, {
    super.key,
    required this.maximumWidth,
    required this.onPressed,
    required this.text,
    this.state,
    this.textStyle,
  });

  final SvgPicture? icon;
  final double maximumWidth;
  final VoidCallback onPressed;
  final String text;
  final TextStyle? textStyle;
  final String? state;

  List<Widget> addIcon() {
    if (icon != null) {
      return [
        icon!,
        const SizedBox(width: AuthDesignedPaddings.smallEmptySpaceHorizontal)
      ];
    }
    return [];
  }

  String getImage() {
    if (state == OtherLearnConstants.stateZero) {
      return AppImageSource.disabledButton;
    } else if (state == OtherLearnConstants.stateWrong) {
      return AppImageSource.redButton;
    }
    return AppImageSource.activeButton;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: state == OtherLearnConstants.stateZero ? null : onPressed,
      child: Container(
        height: GlobalSizes.bubbleButtonHeight,
        width: maximumWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(GlobalSizes.borderRadiusLarge),
          image: DecorationImage(
            image: AssetImage(
              getImage(),
            ),
            fit: BoxFit.cover,
            opacity: GlobalSizes.bubbleOpacity,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...addIcon(),
            Text(
              text,
              style: textStyle ?? AppTextStyles.authButtonText,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
