import 'package:flutter/material.dart';
import 'package:uwords/theme/app_colors.dart';

class CustomImageView extends StatelessWidget {
  const CustomImageView(
      {super.key,
      required this.imageSource,
      required this.width,
      required this.height,
      required this.clipRadius});
  final String imageSource;
  final double width;
  final double height;
  final double clipRadius;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(clipRadius),
      child: Image.network(
        fit: BoxFit.cover,
        imageSource,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) {
            return child;
          } else {
            return SizedBox(
              width: width,
              height: height,
              child: Center(
                child: CircularProgressIndicator(
                  value: loadingProgress.expectedTotalBytes != null
                      ? loadingProgress.cumulativeBytesLoaded /
                          loadingProgress.expectedTotalBytes!
                      : null,
                ),
              ),
            );
          }
        },
        errorBuilder: (context, exception, stackTrace) {
          return SizedBox(
            width: width,
            height: height,
            child: Icon(
              Icons.wifi_tethering_error_outlined,
              size: height / 2,
            ),
          );
        },
        width: width,
        height: height,
      ),
    );
  }
}
