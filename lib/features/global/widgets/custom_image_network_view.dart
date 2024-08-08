import 'package:flutter/material.dart';
import 'package:uwords/theme/app_colors.dart';

class CustomImageNetworkView extends StatelessWidget {
  const CustomImageNetworkView(
      {super.key,
      required this.imageSource,
      required this.width,
      required this.height,
      required this.clipRadius,
      this.darken});
  final String imageSource;
  final double width;
  final double height;
  final double clipRadius;
  final bool? darken;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        fit: BoxFit.cover,
        imageSource,
        color: darken != null ? (darken == true ? Colors.black26 : null) : null,
        colorBlendMode:
            darken != null ? (darken == true ? BlendMode.darken : null) : null,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) {
            return child;
          } else {
            return SizedBox(
              width: MediaQuery.of(context).size.width * width,
              height: MediaQuery.of(context).size.height * height,
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
        width: MediaQuery.of(context).size.width * width,
        height: MediaQuery.of(context).size.height * height,
      ),
    );

    /*Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(clipRadius),
        image: DecorationImage(
          image: NetworkImage(imageSource),
          fit: BoxFit.cover,
        ),
      ),
    );*/
  }
}
