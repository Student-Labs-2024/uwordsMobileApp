import 'package:flutter/material.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:flutter_inset_shadow/flutter_inset_shadow.dart' as fis;

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.isError,
    required this.errorMessage,
  });

  final TextEditingController controller;
  final String hintText;
  final bool isError;
  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      width: (MediaQuery.of(context).size.width - 24 - 24 - 9) * 48 / 318,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: fis.BoxDecoration(
          color: AppColors.whiteBackgroundColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            fis.BoxShadow(
                color: Color.fromRGBO(97, 120, 201, 0.26),
                spreadRadius: 0,
                blurRadius: 76,
                offset: Offset(4, 4),
                inset: false),
            fis.BoxShadow(
                color: Color.fromRGBO(255, 255, 255, 0.08),
                spreadRadius: 0,
                blurRadius: 16,
                offset: Offset(2, 2),
                inset: false),
            fis.BoxShadow(
                color: Color.fromRGBO(255, 255, 255, 0.1),
                spreadRadius: 0,
                blurRadius: 80,
                offset: Offset(2, 2),
                inset: true),
          ]),
      child: TextField(
        controller: controller,
        cursorColor: Colors.purple,
        style: const TextStyle(
          color: Colors.purple,
        ),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.grey),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
