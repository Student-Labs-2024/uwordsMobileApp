import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uwords/features/auth/data/constants/auth_designed_constants.dart';
import 'package:uwords/features/auth/domain/fields_underline_text.dart';
import 'package:uwords/features/auth/domain/validation.dart';
import 'package:uwords/features/global/data/constants/global_paddings.dart';
import 'package:uwords/features/global/data/constants/global_sizes.dart';
import 'package:uwords/features/main/data/constants/box_shadows.dart';
import 'package:uwords/features/main/data/constants/home_page_sizes.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:uwords/theme/app_text_styles.dart';
import 'package:uwords/theme/image_source.dart';
import 'package:flutter_inset_shadow/flutter_inset_shadow.dart' as fis;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CustomTextFieldWithRules extends StatefulWidget {
  const CustomTextFieldWithRules({
    super.key,
    required this.controller,
    required this.hintText,
    required this.isHidden,
    required this.isErrorDisplay,
    this.isNotError,
    this.prefixIcon,
    this.onTap,
    this.isRequiredField,
    required this.validationRules,
  });

  final TextEditingController controller;
  final String hintText;
  final bool isHidden;
  final bool isErrorDisplay;

  final bool? isRequiredField;
  final bool Function()? isNotError;
  final Widget? prefixIcon;
  final VoidCallback? onTap;
  final List<ValidationRule> validationRules;

  @override
  State<CustomTextFieldWithRules> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextFieldWithRules> {
  bool _obscureText = true;
  bool _touched = false;
  bool _isNotError = true;
  String _errorMessage = '';
  bool _requiredField = false;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.isHidden;
    _requiredField = widget.isRequiredField ?? false;
  }

  @override
  void didChangeDependencies() {
    _updateErrorState();
    super.didChangeDependencies();
  }

  void _updateErrorState() {
    if (widget.isNotError != null) {
      _isNotError = widget.isNotError!();
    } else {
      _isNotError = _validateInput();
    }
    setState(() {});
  }

  bool _validateInput() {
    final text = widget.controller.text;
    for (final rule in widget.validationRules) {
      if (!rule.isValid(text)) {
        _errorMessage =
            getLocalizedFieldUnderlineText(context, rule.errorMessage);
        return false;
      }
    }
    _errorMessage = '';
    return true;
  }

  List<Widget> errorDisplay() {
    if (widget.isErrorDisplay && !_isNotError && _touched) {
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
              (_requiredField && widget.controller.text.isEmpty)
                  ? AppLocalizations.of(context).requiredField
                  : _errorMessage,
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
              border: (_isNotError && _touched) || (_touched == false)
                    ? const Border()
                    : Border.all(
                        color: AppColors.errorColor,
                        width: GlobalSizes.customTextFieldErrorSpacer),
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
