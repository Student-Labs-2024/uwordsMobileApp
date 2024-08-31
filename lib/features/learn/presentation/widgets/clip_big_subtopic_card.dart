import 'package:flutter/material.dart';

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    const double radius = 30;
    const double smallRadius = 20;
    const bottomSpace = 50;

    Path path = Path()
      ..moveTo(radius, 0)
      ..lineTo(size.width - radius, 0)
      ..arcToPoint(Offset(size.width, radius),
          radius: const Radius.circular(radius))
      ..lineTo(size.width, size.height - 10)
      ..arcToPoint(Offset(size.width - 10, size.height - bottomSpace),
          radius: const Radius.circular(smallRadius), clockwise: false)
      ..lineTo(size.width - 40, size.height - bottomSpace)
      ..arcToPoint(Offset(size.width - bottomSpace, size.height - radius),
          radius: const Radius.circular(smallRadius), clockwise: false)
      ..lineTo(size.width - bottomSpace, size.height - smallRadius)
      ..lineTo(0 + radius, size.height - smallRadius)
      ..arcToPoint(Offset(0, size.height - radius - smallRadius),
          radius: const Radius.circular(radius))
      ..lineTo(0, radius)
      ..arcToPoint(const Offset(radius, 0),
          radius: const Radius.circular(radius))
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
