import 'package:flutter/material.dart';

class SortClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double radius = 10;

    Path path = Path()
      ..addRRect(RRect.fromLTRBR(0, 0, 45, 45, Radius.circular(radius)));
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
