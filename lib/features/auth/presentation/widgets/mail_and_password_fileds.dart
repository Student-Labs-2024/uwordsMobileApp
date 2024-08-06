import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:uwords/features/global/widgets/custom_textfield.dart';

class MailAndPasswordFileds extends StatefulWidget {
  final TextEditingController mailController;
  final TextEditingController passwordController;
  const MailAndPasswordFileds({
    super.key,
    required this.mailController,
    required this.passwordController,
  });

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
          isHidden: false,
          isErrorDisplay: false,
        ),
        CustomTextField(
          controller: widget.passwordController,
          hintText: AppLocalizations.of(context).password,
          isHidden: true,
          isErrorDisplay: true,
          isError: false,
          errorMessage: 'Message Жесть, ошибка!!!',
        ),
      ],
    );
  }
}
