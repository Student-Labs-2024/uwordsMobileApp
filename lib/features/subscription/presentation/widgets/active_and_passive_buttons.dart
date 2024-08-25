import 'package:flutter/material.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:uwords/theme/app_text_styles.dart';
import 'package:uwords/theme/learn_text_styles.dart';

class ActiveAndPassiveButtons extends StatelessWidget {
  const ActiveAndPassiveButtons(
      {super.key,
      required this.onTapFirstButton,
      required this.onTapSecondButton,
      required this.firstButtonText,
      required this.seconButtonText});
  final VoidCallback onTapFirstButton;
  final VoidCallback onTapSecondButton;
  final String firstButtonText;
  final String seconButtonText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 53,
          width: MediaQuery.of(context).size.width * 0.8,
          child: InkWell(
              onTap: onTapFirstButton,
              child: DecoratedBox(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: AppColors.blueIconGradient),
                child: Center(
                  child: Text(
                    firstButtonText,
                    style: LearnTextStyles.paySubscriptionButton,
                  ),
                ),
              )),
        ),
        SizedBox(
          height: 53,
          width: MediaQuery.of(context).size.width * 0.8,
          child: InkWell(
              onTap: onTapSecondButton,
              child: DecoratedBox(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.whiteColor),
                child: Center(
                  child: Text(
                    seconButtonText,
                    style: AppTextStyles.authButtonText,
                  ),
                ),
              )),
        ),
        const Spacer()
      ],
    );
  }
}
