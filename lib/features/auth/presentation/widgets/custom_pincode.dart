import 'package:flutter/widgets.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:uwords/theme/app_text_styles.dart';

class CustomPincode extends StatefulWidget {
  final TextEditingController textEditingController;
  const CustomPincode({super.key, required this.textEditingController});

  @override
  State<CustomPincode> createState() => _CustomPincodeState();
}

class _CustomPincodeState extends State<CustomPincode> {
  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      length: 6,
      cursorHeight: 20,
      enableActiveFill: true,
      textStyle: AppTextStyles.pinCodeText,
      pinTheme: PinTheme(
          fieldHeight: 50,
          fieldWidth: 45,
          activeColor: AppColors.darkMainColor,
          selectedColor: AppColors.pushedPincodeColor,
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(15),
          inactiveColor: AppColors.defaultPincodeColor,
          selectedFillColor: AppColors.whiteColor,
          activeFillColor: AppColors.whiteColor,
          inactiveFillColor: AppColors.whiteColor,
          disabledColor: AppColors.defaultPincodeColor,
          inactiveBorderWidth: 1,
          activeBorderWidth: 1,
          disabledBorderWidth: 1),
          onCompleted: (value) => widget.textEditingController.text = value,
    );
  }
}
