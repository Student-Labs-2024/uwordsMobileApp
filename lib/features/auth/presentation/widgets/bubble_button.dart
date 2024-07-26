import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uwords/features/auth/presentation/auth_designed_constants.dart';
import 'package:uwords/features/auth/presentation/auth_paddings.dart';
import 'package:uwords/theme/app_text_styles.dart';
import 'package:uwords/theme/image_source.dart';

class BubbleButton extends StatelessWidget {
  const BubbleButton(
    this.icon, {
    super.key,
    required this.maximumWidth,
    required this.onPressed,
    required this.text,
  });

  final String? icon;
  final double maximumWidth;
  final VoidCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: AuthDesignedConstants.bubbleButtonHeight,
        width: maximumWidth,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImageSource.bubbleButton),
            fit: BoxFit.cover,
            opacity: AuthDesignedConstants.bubbleOpacity,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) SvgPicture.asset(icon!),
            if (icon != null)
              const SizedBox(width: AuthDesignedPaddings.smallEmptySpace),
            Text(
              text,
              style: AppTextStyles.authButtonText,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
