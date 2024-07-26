import 'package:flutter/material.dart';
import 'package:uwords/features/auth/presentation/widgets/custom_textfield.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MailAndPasswordFileds extends StatefulWidget {
  final TextEditingController mailController;
  final TextEditingController passwordController;
  const MailAndPasswordFileds(
      {super.key,
      required this.mailController,
      required this.passwordController});

  @override
  State<MailAndPasswordFileds> createState() => _MailAndPasswordFiledsState();
}

class _MailAndPasswordFiledsState extends State<MailAndPasswordFileds> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
          controller: widget.mailController,
          hintText: AppLocalizations.of(context).mail,
          obscoreText: false,
        ),
        const SizedBox(
          height: 5,
        ),
        CustomTextField(
          controller: widget.passwordController,
          hintText: AppLocalizations.of(context).password,
          obscoreText: true,
        ),
      ],
    );
  }
}
