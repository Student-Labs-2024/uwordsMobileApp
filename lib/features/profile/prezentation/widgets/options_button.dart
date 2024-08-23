import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uwords/features/global/data/constants/global_sizes.dart';
import 'package:uwords/features/profile/data/constants/profile_sizes.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:uwords/theme/image_source.dart';

class OptionsButton extends StatelessWidget {
  const OptionsButton({super.key, required this.onPressed});
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(GlobalSizes.borderRadiusCircle),
        border: Border.all(
          color: AppColors.imperial,
          width: ProfileSizes.optionsBordedSize,
        ),
      ),
      height: ProfileSizes.optionsButtonSize,
      width: ProfileSizes.optionsButtonSize,
      child: IconButton(
        constraints:
            const BoxConstraints(maxHeight: ProfileSizes.optionsButtonSize),
        onPressed: onPressed,
        icon: SvgPicture.asset(
          AppImageSource.optionsIcon,
        ),
        iconSize: ProfileSizes.optionsButtonIconSize,
        style: ButtonStyle(
          fixedSize: WidgetStateProperty.all(const Size(
              ProfileSizes.optionsButtonSize, ProfileSizes.optionsButtonSize)),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(GlobalSizes.borderRadiusCircle),
            ),
          ),
        ),
      ),
    );
  }
}
