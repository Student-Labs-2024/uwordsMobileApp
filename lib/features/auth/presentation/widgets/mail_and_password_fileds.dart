import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uwords/features/auth/bloc/auth_bloc.dart';
import 'package:uwords/features/auth/presentation/widgets/custom_textfield.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:uwords/theme/app_colors.dart';

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
    return BlocProvider(
      create: (context) => context.read<AuthBloc>(),
      child: Column(
        children: [
          CustomAuthTextField(
            controller: widget.mailController,
            hintText: AppLocalizations.of(context).mail,
            notHidden: false,
          ),
          const SizedBox(
            height: 5,
          ),
          CustomAuthTextField(
            controller: widget.passwordController,
            hintText: AppLocalizations.of(context).password,
            notHidden: true,
            obscureText: true,
            )
        ],
      ),
    );
  }
}
