import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
    return Column(
      children: [
        Container(
          height: 44,
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
        ),
        SizedBox(
          height: 2,
        ),
        isError
            ? Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
                SvgPicture.asset(
                  'assets/svg/error_ico.svg',
                  color: AppColors.errorColor,
                  height: 9.75,
                ),
                SizedBox(
                  width: 2,
                ),
                SizedBox(
                  height: 14,
                  child: Text(
                    errorMessage,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColors.errorColor,
                    ),
                  ),
                )
              ])
            : SizedBox(
                height: 14,
              )
      ],
    );
  }
}
