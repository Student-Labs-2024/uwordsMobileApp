import 'package:flutter/material.dart';
import 'package:uwords/features/auth/presentation/widgets/custom_textfield.dart';
import 'package:uwords/features/auth/presentation/widgets/mail_and_password_fileds.dart';

class RegistrationFields extends StatelessWidget {
  final TextEditingController mailController;
  final TextEditingController passwordController;
  final TextEditingController usernameController;
  const RegistrationFields(
      {super.key,
      required this.usernameController,
      required this.mailController,
      required this.passwordController});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
          controller: usernameController,
          hintText: "username please",
          obscoreText: false,
        ),
        MailAndPasswordFileds(
            mailController: mailController,
            passwordController: passwordController)
      ],
    );
  }
}
