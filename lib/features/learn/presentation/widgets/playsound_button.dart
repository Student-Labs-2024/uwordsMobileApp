import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uwords/features/global/presentation/widgets/constants/global_sizes.dart';
import 'package:uwords/features/learn/presentation/constants/learn_sizes.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:uwords/theme/image_source.dart';

class PlaysoundButton extends StatelessWidget {
  const PlaysoundButton({super.key, required this.onPressed});
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width * LearnSizes.playButtonSize,
      width: MediaQuery.of(context).size.width * LearnSizes.playButtonSize,
      decoration: BoxDecoration(
        borderRadius:
            BorderRadius.circular(GlobalSizes.borderRadiusMediumLarge),
      ),
      child: IconButton(
        style: IconButton.styleFrom(
          backgroundColor: AppColors.whiteColor,
        ),
        onPressed: onPressed,
        icon: SvgPicture.asset(
          AppImageSource.soundIcon,
          color: AppColors.darkMainColor,
          height: MediaQuery.of(context).size.height *
              LearnSizes.playSoundButtonIconHeight,
        ),
      ),
    );
  }
}
