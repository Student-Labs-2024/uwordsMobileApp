import 'package:flutter/material.dart';
import 'package:uwords/features/global/presentation/widgets/constants/global_sizes.dart';
import 'package:uwords/features/profile/prezentation/constants/profile_sizes.dart';
import 'package:uwords/theme/app_colors.dart';

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
        icon: const Icon(
          Icons.exit_to_app_outlined,
          color: AppColors.imperial,
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
