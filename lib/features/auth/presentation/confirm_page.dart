import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uwords/features/auth/data/constants/auth_designed_constants.dart';
import 'package:uwords/features/auth/data/constants/auth_paddings.dart';
import 'package:uwords/features/auth/presentation/widgets/custom_pincode.dart';
import 'package:uwords/features/global/widgets/bubble_button.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:uwords/theme/app_text_styles.dart';
import 'package:uwords/theme/image_source.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ConfirmPage extends StatelessWidget {
  const ConfirmPage({
    super.key,
    required this.requestCode,
    required this.goBack,
    required this.send,
    required this.codeController,
    required this.email,
  });

  final VoidCallback requestCode;
  final VoidCallback send;
  final VoidCallback goBack;
  final TextEditingController codeController;
  final String email;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
        decoration: const BoxDecoration(
          gradient: AppColors.backgroundGradient,
        ),
        child: SafeArea(
          child: Stack(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: AuthDesignedPaddings.bubblesPaddingTop),
                  child: Image.asset(
                    AppImageSource.topCodeBackground,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      bottom: AuthDesignedPaddings.bubblesPaddingBottom),
                  child: Image.asset(
                    AppImageSource.bottomCodeBackground,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
              ],
            ),
            Padding(
                padding: const EdgeInsets.only(
                    top: AuthDesignedPaddings.returnButtonTop,
                    left: AuthDesignedPaddings.returnButtonLeft),
                child: InkWell(
                  onTap: goBack,
                  child: SvgPicture.asset(
                    AppImageSource.returnIcon,
                    width: AuthDesignedConstants.iconReturnSize,
                    height: AuthDesignedConstants.iconReturnSize,
                  ),
                )),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: AuthDesignedPaddings.middlePagePadding,
                      right: AuthDesignedPaddings.middlePagePadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: AuthDesignedPaddings.middleEmptySpace),
                        child: Text(
                          AppLocalizations.of(context).enterCode,
                          style: AppTextStyles.authHeaderText,
                        ),
                      ),
                      Text(
                        "${AppLocalizations.of(context).useCodeToEnter}$email",
                        style: AppTextStyles.authSendedCodeText,
                      ),
                      const SizedBox(
                        height: AuthDesignedPaddings.smallEmptySpace,
                      ),
                      CustomPincode(textEditingController: codeController),
                      BubbleButton(
                        null,
                        maximumWidth: MediaQuery.of(context).size.width -
                            (AuthDesignedPaddings.basePagePadding),
                        onPressed: send,
                        text: AppLocalizations.of(context).sendCode,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            AppLocalizations.of(context).haveNotGotCode,
                            style: AppTextStyles.authSendedCodeText,
                          ),
                          TextButton(
                            onPressed: requestCode,
                            child: Text(AppLocalizations.of(context).sendAgain,
                                style:
                                    AppTextStyles.authSendedCodeUnderlinedText),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: AuthDesignedPaddings.confirmBottomAdditional,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ]),
        ));
  }
}
