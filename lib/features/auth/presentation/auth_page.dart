import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uwords/features/auth/bloc/auth_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:uwords/features/auth/bloc/auth_enum.dart';
import 'package:uwords/features/auth/data/repository/interface_user_repository.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:uwords/features/auth/presentation/widgets/mail_and_password_fileds.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final TextEditingController mailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final codeController = TextEditingController();

  String regUser = '';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      body: RepositoryProvider(
        create: (context) => context.read<IUserRepository>(),
        child: BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            state.whenOrNull(
              initial: () {
                context.go("/");
              },
              success: (success) {
                switch (success) {
                  case AuthSuccess.authorized:
                    context.go("/home");
                  case AuthSuccess.sendedCode:
                  // TODO: Handle this case.
                }
              },
              failed: (error) {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Text(error.name);
                    });
              },
            );
          },
          builder: (context, state) {
            return state.maybeWhen(orElse: () {
              return SafeArea(
                child: Column(
                  children: [
                    MailAndPasswordFileds(
                        mailController: mailController,
                        passwordController: passwordController),
                    ElevatedButton(
                      onPressed: () async {
                        context.read<AuthBloc>().add(
                            AuthEvent.signInWithMailPassword(
                                emailAddress: mailController.text,
                                password: passwordController.text));
                      },
                      child: Text(
                          AppLocalizations.of(context).signInWithMailPassword),
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        context
                            .read<AuthBloc>()
                            .add(const AuthEvent.signInWithGoogle());
                      },
                      child:
                          Text(AppLocalizations.of(context).signInWithGoogle),
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        context
                            .read<AuthBloc>()
                            .add(const AuthEvent.signInWithVK());
                      },
                      child: Text(AppLocalizations.of(context).signInWithVK),
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        context.go("/home");
                      },
                      child: Text(AppLocalizations.of(context).nextPage),
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        context.go("/");
                      },
                      child: const Text("Экран регистрации"),
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        context.read<AuthBloc>().add(const AuthEvent.logOut());
                      },
                      child: Text(AppLocalizations.of(context).logOut),
                    ),
                  ],
                ),
              );
            }, waitingAnswer: () {
              return Center(
                child: Column(
                  children: [
                    const CircularProgressIndicator(),
                    Text(AppLocalizations.of(context).checkingLoginData),
                  ],
                ),
              );
            },);
          },
        ),
      ),
    );
  }
}
