import 'package:flutter/material.dart';
import 'package:uwords/features/global/presentation/widgets/constants/global_sizes.dart';
import 'package:uwords/features/profile/prezentation/constants/profile_paddings.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:uwords/theme/app_text_styles.dart';

class NavButton extends StatelessWidget {
  const NavButton(
      {super.key,
      required this.onPressed,
      required this.text,
      required this.isSelected});
  final VoidCallback onPressed;
  final String text;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? AppColors.whiteColor : null,
          borderRadius: BorderRadius.circular(GlobalSizes.borderRadiusSmall),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: ProfilePaddings.navButtonHorizontal,
                vertical: ProfilePaddings.navButtonVertical),
            child: Text(
              text,
              style: isSelected
                  ? AppTextStyles.profileNavActive
                  : AppTextStyles.profileNavNotActive,
            ),
          ),
        ),
      ),
    );
  }
}
