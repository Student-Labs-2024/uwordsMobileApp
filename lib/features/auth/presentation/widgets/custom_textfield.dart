import 'package:flutter/material.dart';
import 'package:uwords/features/auth/data/auth_undesigned_constants.dart';
import 'package:uwords/theme/app_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscoreText,
  });

  final TextEditingController controller;
  final String hintText;
  final bool obscoreText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: AuthUndesignedConstants.symmetricHorizontalPadding),
      child: TextField(
        controller: controller,
        obscureText: obscoreText,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.whiteColor),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.lightgrayColor),
          ),
          fillColor: AppColors.lightWhite,
          filled: true,
          hintText: hintText,
        ),
      ),
    );
  }
}
