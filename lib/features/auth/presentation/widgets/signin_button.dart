import 'package:flutter/material.dart';
import 'package:uwords/features/auth/data/auth_undesigned_constants.dart';
import 'package:uwords/theme/app_colors.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({super.key, required this.img, required this.onPressed});
  final String img;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AuthUndesignedConstants.buttonSize,
      width: AuthUndesignedConstants.buttonSize,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: AppColors.lightgrayColor,
            spreadRadius: 1,
            blurRadius: 3,
            offset: Offset(1, 2),
          ),
        ],
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          elevation: 0,
          alignment: Alignment.center,
          backgroundColor: Colors.white,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          padding: EdgeInsets.zero,
        ),
        child: const Icon(
          Icons.abc,
          size: AuthUndesignedConstants.buttonSize,
          color: AppColors.blackColor,
        ),
      ),
    );
  }
}
