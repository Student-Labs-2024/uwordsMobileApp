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
      this.isNotError,
      this.errorMessage,
      this.prefixIcon,
      this.onTap});

  final TextEditingController controller;
  final String hintText;
  final bool isHidden;
  final bool isErrorDisplay;

  final bool Function()? isNotError;
  final String? errorMessage;
  final Widget? prefixIcon;
  final VoidCallback? onTap;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _obscureText = true;
  bool _touched = false;
  bool _isNotError = true;
  String _errorMessage = '';

  @override
  void initState() {
    super.initState();
    _obscureText = widget.isHidden;
    _updateErrorState();
  }

  void _updateErrorState() {
    if (widget.isNotError != null) {
      _isNotError = widget.isNotError!();
      _errorMessage = widget.errorMessage ?? '';
    } else {
      _isNotError = true;
    }
    setState(() {});
  }

  List<Widget> errorDisplay() {
    if (widget.isErrorDisplay &&
        !_isNotError &&
        widget.controller.text.isNotEmpty) {
      return [
        SizedBox(
          height: GlobalSizes.customTextFieldErrorHeight,
          child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            SvgPicture.asset(
              AppImageSource.errorIco,
              color: AppColors.errorColor,
              height: GlobalSizes.customTextFieldIconSize,
            ),
            const SizedBox(
              width: GlobalSizes.customTextFieldSpacing,
            ),
            Text(
              _errorMessage,
              style: AppTextStyles.customTextfieldExeption,
            ),
          ]),
        )
      ];
    }
    return [
      SizedBox(
        height: _isNotError
            ? GlobalSizes.borderRadiusSmall
            : GlobalSizes.customTextFieldErrorHeight,
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: HomePageComponentSizes.linkTextFieldHeight,
          padding: const EdgeInsets.symmetric(
              horizontal: GlobalPaddings.customTextFieldHorizontal),
          decoration: fis.BoxDecoration(
              color: AppColors.whiteBackgroundColor,
              borderRadius:
                  BorderRadius.circular(GlobalSizes.borderRadiusSmall),
              border: Border(
                bottom: (_isNotError && _touched) || (_touched == false)
                    ? BorderSide.none
                    : const BorderSide(
                        color: AppColors.errorColor,
                        width: GlobalSizes.customTextFieldErrorSpacer),
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
                  onChanged: (value) {
                    _updateErrorState();
                    _touched = true;
                  },
                  onSubmitted: (value) {
                    _touched = false;
                  },
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
