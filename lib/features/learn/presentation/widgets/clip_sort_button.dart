import 'package:flutter/material.dart';
import 'package:uwords/features/learn/presentation/constants/learn_sizes.dart';

class SortClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double radius = 10;

    Path path = Path()
      ..addRRect(RRect.fromLTRBR(0, 0, LearnSizes.classicSortIconWidth, LearnSizes.classicSortIconWidth, Radius.circular(radius)));
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
