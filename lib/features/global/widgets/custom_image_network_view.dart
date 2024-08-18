import 'package:flutter/material.dart';
import 'package:uwords/theme/app_colors.dart';

class CustomImageNetworkView extends StatelessWidget {
  const CustomImageNetworkView(
      {super.key,
      required this.imageSource,
      required this.width,
      required this.height,
      required this.clipRadius,
      this.darken,
      this.extraDarken});
  final String imageSource;
  final double width;
  final double height;
  final double clipRadius;
  final bool? darken;
  final bool? extraDarken;

  Color? getDarkness() {
    if (extraDarken != null) {
      if (extraDarken == true) return AppColors.black45Color;
    }
    if (darken != null) {
      if (darken == true) return AppColors.black25Color;
    }
    return null;
  }

  BlendMode? getBlendMode() {
    if (extraDarken != null) {
      if (extraDarken == true) return BlendMode.darken;
    }
    if (darken != null) {
      if (darken == true) return BlendMode.darken;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(clipRadius),
      child: Image.network(
        fit: BoxFit.cover,
        imageSource,
        color: getDarkness(),
        colorBlendMode: getBlendMode(),
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) {
            return child;
          } else {
            return SizedBox(
              width: width,
              height: height,
              child: Center(
                child: CircularProgressIndicator(
                  color: AppColors.mainColor,
                  value: loadingProgress.expectedTotalBytes != null
                      ? loadingProgress.cumulativeBytesLoaded /
                          loadingProgress.expectedTotalBytes!
                      : null,
                ),
              ),
            );
          }
        },
        width: width,
        height: height,
      ),
    );
  }
}
