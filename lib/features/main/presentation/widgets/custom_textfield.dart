import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uwords/features/main/data/constants/box_shadows.dart';
import 'package:uwords/features/main/data/constants/home_page_paddings.dart';
import 'package:uwords/features/main/data/constants/home_page_sizes.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:flutter_inset_shadow/flutter_inset_shadow.dart' as fis;
import 'package:uwords/theme/app_text_styles.dart';
import 'package:uwords/theme/image_source.dart';

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
          height: HomePageComponentSizes.linkTextFieldHeight,
          padding: const EdgeInsets.symmetric(
              horizontal: HomePagePaddings.baseHorizontal),
          decoration: fis.BoxDecoration(
              color: AppColors.whiteBackgroundColor,
              borderRadius: BorderRadius.circular(10),
              boxShadow: MainBoxShadows.main),
          child: TextField(
            controller: controller,
            cursorColor: AppColors.darkMainColor,
            style: const TextStyle(
              color: AppColors.darkMainColor,
            ),
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: AppTextStyles.customTextfieldInput,
              border: InputBorder.none,
            ),
          ),
        ),
        const SizedBox(
          height: HomePageComponentSizes.linkTextFieldSpacing,
        ),
        isError
            ? Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
                SvgPicture.asset(
                  AppImageSource.errorIco,
                  color: AppColors.errorColor,
                  height: HomePageComponentSizes.linkTextFieldSpacing,
                ),
                const SizedBox(
                  width: HomePageComponentSizes.linkTextFieldIconSize,
                ),
                SizedBox(
                  height: HomePageComponentSizes.linkTextFieldErrorHeight,
                  child: Text(
                    errorMessage,
                    style: AppTextStyles.customTextfieldExeption,
                  ),
                )
              ])
            : const SizedBox(
                height: HomePageComponentSizes.linkTextFieldErrorHeight,
              )
      ],
    );
  }
}
