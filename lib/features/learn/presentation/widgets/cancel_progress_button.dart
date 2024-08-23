import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uwords/features/learn/data/constants/learn_sizes.dart';
import 'package:uwords/features/profile/data/constants/profile_sizes.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:uwords/theme/image_source.dart';

class CancelProgressButton extends StatelessWidget {
  const CancelProgressButton({super.key, required this.onPressed});
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          color: AppColors.mainColor,
          width: LearnSizes.cancelButtonBordedSize,
        ),
      ),
      height: LearnSizes.cancelButtonSize,
      width: LearnSizes.cancelButtonSize,
      child: IconButton(
        constraints:
            const BoxConstraints(maxHeight: ProfileSizes.optionsButtonSize),
        onPressed: onPressed,
        icon: SvgPicture.asset(
          AppImageSource.cancelIcon,
        ),
        color: AppColors.mainColor,
        iconSize: LearnSizes.cancelButtonIconSize,
        style: ButtonStyle(
          fixedSize: WidgetStateProperty.all(const Size(
              LearnSizes.cancelButtonIconSize,
              LearnSizes.cancelButtonIconSize)),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        ),
      ),
    );
  }
}
