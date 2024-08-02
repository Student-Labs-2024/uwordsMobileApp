import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uwords/features/auth/bloc/auth_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:uwords/features/auth/bloc/auth_enum.dart';
import 'package:uwords/features/auth/data/auth_undesigned_constants.dart';
import 'package:uwords/features/auth/data/repository/interface_user_repository.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:uwords/features/auth/presentation/auth_paddings.dart';
import 'package:uwords/features/auth/presentation/widgets/bubble_button.dart';
import 'package:uwords/features/auth/presentation/widgets/divider_with_text.dart';
import 'package:uwords/features/auth/presentation/widgets/mail_and_password_fileds.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:uwords/theme/app_text_styles.dart';
import 'package:uwords/theme/image_source.dart';

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
    double maximumWidth = MediaQuery.of(context).size.width;
    return Scaffold(
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
            return state.maybeWhen(
              orElse: () {
                return SafeArea(
                  child: DecoratedBox(
                    decoration: const BoxDecoration(
                      gradient: AppColors.backgroundGradient,
                    ),
                    child: Stack(children: [
                      Image.asset(
                        AppImageSource.headerAuth,
                        width: maximumWidth,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: AuthDesignedPaddings.authHeaderPadding,
                            bottom: AuthDesignedPaddings.basePagePadding,
                            left: AuthDesignedPaddings.basePagePadding,
                            right: AuthDesignedPaddings.basePagePadding),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical:
                                      AuthDesignedPaddings.middleEmptySpace),
                              child: Text(
                                AppLocalizations.of(context).authIntoAccount,
                                style: AppTextStyles.authHeaderText,
                              ),
                            ),
                            MailAndPasswordFileds(
                                mailController: mailController,
                                passwordController: passwordController),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical:
                                      AuthDesignedPaddings.middleEmptySpace),
                              child: BubbleButton(null,
                                  maximumWidth: maximumWidth -
                                      (AuthDesignedPaddings.basePagePadding),
                                  onPressed: () async {
                                context.read<AuthBloc>().add(
                                    AuthEvent.signInWithMailPassword(
                                        emailAddress: mailController.text,
                                        password: passwordController.text));
                              }, text: AppLocalizations.of(context).signIn),
                            ),
                            const SizedBox(
                              height: AuthUndesignedConstants.smallestContainer,
                            ),
                            DividerWithText(
                              text: AppLocalizations.of(context).or,
                              maximumWidth: maximumWidth -
                                  (AuthDesignedPaddings.basePagePadding),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical:
                                      AuthDesignedPaddings.middleEmptySpace),
                              child: BubbleButton(AppImageSource.googleIcon,
                                  maximumWidth: maximumWidth -
                                      (AuthDesignedPaddings.basePagePadding),
                                  onPressed: () async {
                                context
                                    .read<AuthBloc>()
                                    .add(const AuthEvent.signInWithGoogle());
                              },
                                  text: AppLocalizations.of(context)
                                      .signInWithGoogle),
                            ),
                            BubbleButton(AppImageSource.vkIcon,
                                maximumWidth: maximumWidth -
                                    (AuthDesignedPaddings.basePagePadding),
                                onPressed: () async {
                              context
                                  .read<AuthBloc>()
                                  .add(const AuthEvent.signInWithVK());
                            }, text: AppLocalizations.of(context).signInWithVK),
                            const SizedBox(
                              height: AuthDesignedPaddings.smallEmptySpace,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Spacer(),
                                Text(
                                    '${AppLocalizations.of(context).dontHaveAnAccount} ',
                                    style: AppTextStyles.authSmallText),
                                InkWell(
                                  onTap: () {
                                    context.go("/");
                                  },
                                  child: Text(
                                    AppLocalizations.of(context).signUp,
                                    style: AppTextStyles.authLinkText,
                                  ),
                                ),
                                const Spacer()
                              ],
                            )
                          ],
                        ),
                      ),
                    ]),
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
