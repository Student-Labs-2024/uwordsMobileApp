import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uwords/common/utils/valid_string_check.dart';
import 'package:uwords/features/auth/bloc/auth_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:uwords/features/auth/bloc/auth_enum.dart';
import 'package:uwords/features/auth/data/repository/interface_user_repository.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:uwords/features/auth/data/constants/auth_paddings.dart';
import 'package:uwords/features/global/widgets/bubble_button.dart';
import 'package:uwords/features/auth/presentation/widgets/divider_with_text.dart';
import 'package:uwords/features/auth/presentation/widgets/mail_and_password_fileds.dart';
import 'package:uwords/features/learn/data/constants/other_learn_constants.dart';
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
  String inputState = OtherLearnConstants.stateZero;
  String regUser = '';
  @override
  void initState() {
    super.initState();
  }

  void updateValidDataForButton() {
    if (isCorrectEmail(email: mailController.text) &&
        isCorrectPassword(password: passwordController.text)) {
      inputState = OtherLearnConstants.stateActive;
    } else {
      inputState = OtherLearnConstants.stateZero;
    }
  }

  @override
  void didChangeDependencies() {
    updateValidDataForButton();
    super.didChangeDependencies();
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
                return DecoratedBox(
                  decoration: const BoxDecoration(
                    gradient: AppColors.backgroundGradient,
                  ),
                  child: SafeArea(
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
                              passwordController: passwordController,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical:
                                      AuthDesignedPaddings.middleEmptySpace),
                              child: BubbleButton(null,
                                  state: inputState,
                                  maximumWidth: maximumWidth -
                                      (AuthDesignedPaddings.basePagePadding),
                                  onPressed: inputState ==
                                          OtherLearnConstants.stateZero
                                      ? () {}
                                      : () {
                                          context.read<AuthBloc>().add(
                                              AuthEvent.signInWithMailPassword(
                                                  emailAddress:
                                                      mailController.text,
                                                  password:
                                                      passwordController.text));
                                        },
                                  text: AppLocalizations.of(context).signIn),
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
                              child: BubbleButton(
                                  SvgPicture.asset(AppImageSource.googleIcon),
                                  maximumWidth: maximumWidth -
                                      (AuthDesignedPaddings.basePagePadding),
                                  onPressed: () {
                                context
                                    .read<AuthBloc>()
                                    .add(const AuthEvent.signInWithGoogle());
                              },
                                  text: AppLocalizations.of(context)
                                      .signInWithGoogle),
                            ),
                            BubbleButton(
                                SvgPicture.asset(AppImageSource.vkIcon),
                                maximumWidth: maximumWidth -
                                    (AuthDesignedPaddings.basePagePadding),
                                onPressed: () {
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
