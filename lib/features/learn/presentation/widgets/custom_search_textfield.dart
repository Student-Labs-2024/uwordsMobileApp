import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uwords/features/auth/data/constants/auth_designed_constants.dart';
import 'package:uwords/features/global/data/constants/global_sizes.dart';
import 'package:uwords/features/main/data/constants/box_shadows.dart';
import 'package:uwords/features/main/data/constants/home_page_paddings.dart';
import 'package:uwords/features/main/data/constants/home_page_sizes.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:uwords/theme/app_text_styles.dart';
import 'package:flutter_inset_shadow/flutter_inset_shadow.dart' as fis;
import 'package:uwords/theme/image_source.dart';

class CustomSearchTextfield extends StatefulWidget {
  const CustomSearchTextfield({
    super.key,
    required this.controller,
    required this.hintText,
  });

  final TextEditingController controller;
  final String hintText;

  @override
  State<CustomSearchTextfield> createState() => _CustomSearchTextfieldState();
}

class _CustomSearchTextfieldState extends State<CustomSearchTextfield> {
  @override
  void initState() {
    super.initState();
  }

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
              borderRadius:
                  BorderRadius.circular(GlobalSizes.borderRadiusSmall),
              boxShadow: MainBoxShadows.main),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: widget.controller,
                  cursorColor: AppColors.darkMainColor,
                  style: const TextStyle(
                    color: AppColors.darkMainColor,
                  ),
                  decoration: InputDecoration(
                      hintText: widget.hintText,
                      hintStyle: AppTextStyles.customTextfieldInput,
                      border: InputBorder.none,
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(
                            AuthDesignedConstants.visabillityIconHeight),
                        child: SvgPicture.asset(
                          AppImageSource.searchIcon,
                          color: AppColors.darkMainColor,
                          height: AuthDesignedConstants.visabillityIconHeight,
                          width: AuthDesignedConstants.visabillityIconHeight,
                        ),
                      )),
                  onTapOutside: (event) {
                    widget.controller.clear();
                  },
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: HomePageComponentSizes.linkTextFieldSpacing,
        ),
      ],
    );
  }
}
