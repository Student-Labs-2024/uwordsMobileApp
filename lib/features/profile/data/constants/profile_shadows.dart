import 'package:flutter/material.dart';
import 'package:flutter_inset_shadow/flutter_inset_shadow.dart' as fis;

class ProfileShadows {
  static var statisticCard = const [
    fis.BoxShadow(
      color: Color.fromRGBO(97, 120, 201, 0.26),
      blurRadius: 16.0,
      spreadRadius: 0,
      offset: Offset(4, 4),
      inset: false,
    ),
    fis.BoxShadow(
      color: Color.fromRGBO(255, 255, 255, 0.08),
      blurRadius: 16.0,
      spreadRadius: 0,
      offset: Offset(2, 2),
      inset: false,
    ),
  ];
}
