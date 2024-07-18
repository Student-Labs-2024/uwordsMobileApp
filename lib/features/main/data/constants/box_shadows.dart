import 'package:flutter/material.dart';
import 'package:flutter_inset_shadow/flutter_inset_shadow.dart' as fis;

class MainBoxShadows {
  static var main = const [
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
    fis.BoxShadow(
      color: Color.fromRGBO(255, 255, 255, 0.1),
      blurRadius: 80.0,
      spreadRadius: 1,
      offset: Offset(2, 2),
      inset: true,
    ),
  ];

  static var recordButtonPressed = const [
    fis.BoxShadow(
      offset: Offset(-4, 4),
      blurRadius: 1,
      spreadRadius: 0,
      color: Color.fromRGBO(201, 217, 232, 0.8),
      inset: true,
    ),
  ];

  static var recordButtonNotPressed = const [
    fis.BoxShadow(
        color: Color.fromRGBO(255, 255, 255, 0.5),
        spreadRadius: 0,
        blurRadius: 10,
        offset: Offset(-5, 5),
        blurStyle: BlurStyle.normal),
    fis.BoxShadow(
        color: Color.fromRGBO(201, 217, 232, 0.5),
        spreadRadius: 0,
        blurRadius: 10,
        offset: Offset(-5, 5),
        blurStyle: BlurStyle.normal),
    fis.BoxShadow(
        color: Color.fromRGBO(144, 148, 151, 0.25),
        spreadRadius: 0,
        blurRadius: 4,
        offset: Offset(0, 4),
        blurStyle: BlurStyle.normal),
  ];
}
