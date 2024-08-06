import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uwords/features/auth/data/constants/auth_designed_constants.dart';
import 'package:uwords/features/global/data/constants/global_paddings.dart';
import 'package:uwords/features/global/data/constants/global_sizes.dart';
import 'package:uwords/features/main/data/constants/box_shadows.dart';
import 'package:uwords/features/main/data/constants/home_page_sizes.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:uwords/theme/app_text_styles.dart';
import 'package:flutter_inset_shadow/flutter_inset_shadow.dart' as fis;
import 'package:uwords/theme/image_source.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.isHidden,
      required this.isErrorDisplay,
      this.isError,
      this.errorMessage,
      this.prefixIcon,
      this.onTap});

  final TextEditingController controller;
  final String hintText;
  final bool isHidden;
  final bool isErrorDisplay;

  final bool? isError;
  final String? errorMessage;
  final Widget? prefixIcon;
  final VoidCallback? onTap;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _obscureText = true;

  bool isError = false;
  String errorMessage = '';

  @override
  void initState() {
    _obscureText = widget.isHidden;
    if (widget.isError != null) {
      isError = widget.isError!;
    }
    if (widget.errorMessage != null) {
      errorMessage = widget.errorMessage!;
    }
    super.initState();
  }

  List<Widget> errorDisplay() {
    if (widget.isErrorDisplay) {
      return [
        const SizedBox(
          height: HomePageComponentSizes.linkTextFieldSpacing,
        ),
        isError
            ? SizedBox(
                height: GlobalSizes.customTextFieldErrorHeight,
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        AppImageSource.errorIco,
                        color: AppColors.errorColor,
                        height: GlobalSizes.customTextFieldIconSize,
                      ),
                      const SizedBox(
                        width: GlobalSizes.customTextFieldSpacing,
                      ),
                      Text(
                        errorMessage,
                        style: AppTextStyles.customTextfieldExeption,
                      ),
                    ]),
              )
            : const SizedBox(
                height: GlobalSizes.customTextFieldErrorHeight,
              )
      ];
    }
    return [];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: HomePageComponentSizes.linkTextFieldHeight,
          padding: const EdgeInsets.symmetric(
              horizontal: GlobalPaddings.customTextFieldHorizontal),
          margin: widget.isErrorDisplay
              ? null
              : const EdgeInsets.only(
                  bottom: GlobalPaddings.customTextFieldTop),
          decoration: fis.BoxDecoration(
              color: AppColors.whiteBackgroundColor,
              borderRadius:
                  BorderRadius.circular(GlobalSizes.borderRadiusSmall),
              border: Border(
                bottom: isError
                    ? const BorderSide(color: AppColors.errorColor, width: 1.0)
                    : BorderSide.none,
              ),
              boxShadow: MainBoxShadows.main),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: widget.controller,
                  obscureText: _obscureText,
                  obscuringCharacter: '*',
                  onTap: widget.onTap,
                  cursorColor: AppColors.darkMainColor,
                  style: const TextStyle(
                    color: AppColors.darkMainColor,
                  ),
                  decoration: InputDecoration(
                    hintText: widget.hintText,
                    hintStyle: AppTextStyles.customTextfieldInput,
                    border: InputBorder.none,
                    prefix: widget.prefixIcon ?? const SizedBox(),
                    suffixIcon: widget.isHidden
                        ? Padding(
                            padding: const EdgeInsets.all(
                                AuthDesignedConstants.visabillityIconHeight),
                            child: InkWell(
                              child: SvgPicture.asset(
                                _obscureText
                                    ? AppImageSource.visibilityOutlinedOff
                                    : AppImageSource.visibilityOutlined,
                                color: AppColors.darkMainColor,
                                height:
                                    AuthDesignedConstants.visabillityIconHeight,
                                width:
                                    AuthDesignedConstants.visabillityIconHeight,
                              ),
                              onTap: () {
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                            ),
                          )
                        : const SizedBox(),
                  ),
                ),
              ),
            ],
          ),
        ),
        ...errorDisplay(),
      ],
    );
  }
}
