import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uwords/features/auth/bloc/auth_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:uwords/features/auth/data/auth_undesigned_constants.dart';
import 'package:uwords/features/auth/data/repository/interface_user_repository.dart';
import 'package:uwords/features/auth/presentation/widgets/custom_textfield.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:uwords/theme/app_text_styles.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  String regUser = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.brownColor,
      body: RepositoryProvider(
        create: (context) => context.read<IUserRepository>(),
        child: BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            state.whenOrNull(
                initial: () {},
                authorized: () {
                  context.go("/home");
                },
                registred: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(
                          AppLocalizations.of(context).successRegistration)));
                },
                failedRegisteration: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(
                          AppLocalizations.of(context).failedRegistration)));
                },
                failedSignIn: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(
                          AppLocalizations.of(context).canNotAuthorizate)));
                });
          },
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () {
                return SafeArea(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: AuthUndesignedConstants.mediumContainer,
                      ),
                      const Icon(
                        Icons.lock_outlined,
                        size: AuthUndesignedConstants.hugeIcon,
                        color: AppColors.blackColor,
                      ),
                      const SizedBox(
                        height: AuthUndesignedConstants.mediumContainer,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            AppLocalizations.of(context).dontHaveAnAccount,
                            style: AppTextStyles.customTextFieldForAuth,
                          ),
                          Text(
                            AppLocalizations.of(context).signUp,
                            style: AppTextStyles.customTextFieldForAuth,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: AuthUndesignedConstants.smallContainer,
                      ),
                      CustomTextField(
                        controller: usernameController,
                        hintText: AppLocalizations.of(context).mail,
                        obscoreText: false,
                      ),
                      const SizedBox(
                        height: AuthUndesignedConstants.smallestContainer,
                      ),
                      CustomTextField(
                        controller: passwordController,
                        hintText: AppLocalizations.of(context).password,
                        obscoreText: true,
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          context.read<AuthBloc>().add(
                              AuthEvent.signInWithMailPassword(
                                  emailAddress: usernameController.text,
                                  password: passwordController.text));
                        },
                        child: Text(AppLocalizations.of(context)
                            .signInWithMailPassword),
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          context.read<AuthBloc>().add(AuthEvent.registerUser(
                              emailAddress: usernameController.text,
                              password: passwordController.text));
                        },
                        child: Text(AppLocalizations.of(context)
                            .registerUserWithMailAndPassword),
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
                          context
                              .read<AuthBloc>()
                              .add(const AuthEvent.logOut());
                        },
                        child: Text(AppLocalizations.of(context).logOut),
                      ),
                    ],
                  ),
                );
              },
              waitingAnswer: () {
                return Center(
                  child: Column(
                    children: [
                      const CircularProgressIndicator(),
                      Text(AppLocalizations.of(context).checkingLoginData),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
