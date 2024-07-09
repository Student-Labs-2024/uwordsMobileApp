import 'package:flutter/material.dart';
import 'package:uwords/theme/app_colors.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({super.key, required this.img, required this.onPressed});
  final String img;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(1, 2),
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
          size: 90,
          color: Colors.black,
        ),
      ),
    );
  }
}
