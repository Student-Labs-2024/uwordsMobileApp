import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:uwords/features/auth/data/constants/auth_designed_constants.dart';
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: PinCodeTextField(
        appContext: context,
        length: AuthDesignedConstants.pincodeLength,
        cursorHeight: AuthDesignedConstants.cursorHeight,
        enableActiveFill: true,
        textStyle: AppTextStyles.pinCodeText,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        pinTheme: PinTheme(
            fieldHeight: AuthDesignedConstants.pincodeCellHeigth,
            fieldWidth: AuthDesignedConstants.pincodeCellWidth,
            activeColor: AppColors.darkMainColor,
            selectedColor: AppColors.pushedPincodeColor,
            shape: PinCodeFieldShape.box,
            borderRadius: BorderRadius.circular(
                AuthDesignedConstants.pincodeBorderRadius),
            inactiveColor: AppColors.defaultPincodeColor,
            selectedFillColor: AppColors.whiteColor,
            activeFillColor: AppColors.whiteColor,
            inactiveFillColor: AppColors.whiteColor,
            disabledColor: AppColors.defaultPincodeColor,
            inactiveBorderWidth: AuthDesignedConstants.borderWidth,
            activeBorderWidth: AuthDesignedConstants.borderWidth,
            disabledBorderWidth: AuthDesignedConstants.borderWidth),
        onCompleted: (value) => widget.textEditingController.text = value,
        onChanged: (value) => widget.textEditingController.text = value,
        onSaved: (value) => widget.textEditingController.text = value ?? '',
        onSubmitted: (value) => widget.textEditingController.text = value,
        keyboardType: TextInputType.number,
      ),
    );
  }
}
