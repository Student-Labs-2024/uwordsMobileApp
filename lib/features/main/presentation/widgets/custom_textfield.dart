import 'package:flutter/material.dart';
import 'package:uwords/theme/app_colors.dart';

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
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            AppColors.gradientSearchColor1,
            AppColors.gradientSearchColor2,
            AppColors.gradientSearchColor3
          ],
        ),
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(97, 120, 201, 0.26),
            blurRadius: 16.0,
            spreadRadius: 0,
            offset: Offset(4, 4),
          ),
          BoxShadow(
            color: Color.fromRGBO(255, 255, 255, 0.08),
            blurRadius: 16.0,
            spreadRadius: 0,
            offset: Offset(2, 2),
          ),
        ],
        //border: Border.
      ),
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
