import 'package:flutter/material.dart';
import 'package:uwords/features/auth/presentation/widgets/mail_and_password_fileds.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:uwords/features/global/widgets/custom_textfield.dart';

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
        CustomTextField(
          controller: usernameController,
          hintText: AppLocalizations.of(context).name,
          isHidden: false,
          isErrorDisplay: false,
          isError: false,
        ),
        MailAndPasswordFileds(
            mailController: mailController,
            passwordController: passwordController)
      ],
    );
  }
}
