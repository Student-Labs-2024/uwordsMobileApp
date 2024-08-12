import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:uwords/common/utils/valid_string_check.dart';
import 'package:uwords/features/auth/bloc/auth_bloc.dart';
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
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return Column(
          children: [
            CustomTextField(
              controller: widget.mailController,
              hintText: AppLocalizations.of(context).mail,
              isHidden: false,
              isErrorDisplay: true,
              isNotError: () =>
                  isCorrectEmail(email: widget.mailController.text),
              errorMessage: AppLocalizations.of(context).wrongEmail,
            ),
            CustomTextField(
              controller: widget.passwordController,
              hintText: AppLocalizations.of(context).password,
              isHidden: true,
              isErrorDisplay: true,
              isNotError: () =>
                  isCorrectPassword(password: widget.passwordController.text),
              errorMessage: AppLocalizations.of(context).wrongPassword,
            ),
          ],
        );
      },
    );
  }
}
