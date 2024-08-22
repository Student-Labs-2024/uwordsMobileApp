import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:uwords/features/auth/bloc/auth_bloc.dart';
import 'package:uwords/features/auth/domain/validation.dart';
import 'package:uwords/features/auth/presentation/widgets/custom_textfield_with_rules.dart';

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
            CustomTextFieldWithRules(
              controller: widget.mailController,
              hintText: AppLocalizations.of(context).mail,
              isHidden: false,
              isErrorDisplay: true,
              validationRules: validationEmailRules,
              isRequiredField: true,
            ),
            CustomTextFieldWithRules(
              controller: widget.passwordController,
              hintText: AppLocalizations.of(context).password,
              isHidden: true,
              isErrorDisplay: true,
              validationRules: validationPasswordRules,
              isRequiredField: true,
            )
          ],
        );
      },
    );
  }
}
