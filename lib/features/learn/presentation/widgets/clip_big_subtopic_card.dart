import 'dart:math';

import 'package:flutter/material.dart';

class MyClipper extends CustomClipper<Path> {
@override
Path getClip(Size size) {
  const double radius = 30;
  const double smallRadius = 20;

  Path path = Path()
    ..moveTo(radius, 0)
    ..lineTo(size.width - radius, 0)
    ..arcToPoint(Offset(size.width, radius), radius: Radius.circular(radius)) // Сверху справа
    // -----------------------------------------------------
    ..lineTo(size.width, size.height-10)
    ..arcToPoint(Offset(size.width-10, size.height - 50), radius: Radius.circular(smallRadius), clockwise: false)
    ..lineTo(size.width-40, size.height - 50)
    ..arcToPoint(Offset(size.width-50, size.height-30), radius: Radius.circular(smallRadius), clockwise: false)
    ..lineTo(size.width-50, size.height-20)
    ..lineTo(0+radius, size.height-20)
    //------------------------------------------------------------------------------------
    ..arcToPoint(Offset(0, size.height - radius- smallRadius), radius: Radius.circular(radius)) // Снизу слева
    ..lineTo(0, radius)
    ..arcToPoint(Offset(radius, 0), radius: Radius.circular(radius)) // Сверху слева
    ..close();

  return path;
}

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}