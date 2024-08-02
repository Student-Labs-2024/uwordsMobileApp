import 'package:flutter/material.dart';
import 'package:uwords/features/auth/data/auth_undesigned_constants.dart';
import 'package:uwords/features/auth/presentation/auth_designed_constants.dart';
import 'package:uwords/features/auth/presentation/widgets/mail_and_password_fileds.dart';
import 'package:uwords/features/main/data/constants/box_shadows.dart';
import 'package:uwords/features/main/data/constants/home_page_paddings.dart';
import 'package:uwords/features/main/data/constants/home_page_sizes.dart';
import 'package:flutter_inset_shadow/flutter_inset_shadow.dart' as fis;
import 'package:uwords/theme/app_colors.dart';
import 'package:uwords/theme/app_text_styles.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RegistrationFields extends StatelessWidget {
  final TextEditingController mailController;
  final TextEditingController passwordController;
  final TextEditingController usernameController;
  const RegistrationFields({
    super.key,
    required this.usernameController,
    required this.mailController,
    required this.passwordController,
  });
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
              borderRadius: BorderRadius.circular(
                  AuthDesignedConstants.customTextFieldBorderRadius),
              boxShadow: MainBoxShadows.main),
          child: SizedBox(
            child: TextField(
              textAlignVertical: TextAlignVertical.center,
              expands: true,
              maxLines: null,
              minLines: null,
              controller: usernameController,
              obscureText: false,
              cursorColor: AppColors.darkMainColor,
              style: const TextStyle(
                color: AppColors.darkMainColor,
              ),
              decoration: InputDecoration(
                hintText: AppLocalizations.of(context).name,
                hintStyle: AppTextStyles.customTextfieldInput,
                border: InputBorder.none,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: AuthUndesignedConstants.smallestContainer,
        ),
        MailAndPasswordFileds(
            mailController: mailController,
            passwordController: passwordController)
      ],
    );
  }
}
