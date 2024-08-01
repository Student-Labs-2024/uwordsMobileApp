import 'package:flutter/material.dart';

class CustomImageNetworkView extends StatelessWidget {
  const CustomImageNetworkView(
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
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(clipRadius),
        image: DecorationImage(
          image: NetworkImage(imageSource),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
