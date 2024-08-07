import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:uwords/common/utils/url_launch.dart';
import 'package:uwords/features/auth/bloc/auth_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:uwords/features/auth/bloc/auth_enum.dart';
import 'package:uwords/features/auth/data/auth_undesigned_constants.dart';
import 'package:uwords/features/auth/data/repository/interface_user_repository.dart';
import 'package:uwords/features/auth/data/constants/auth_designed_constants.dart';
import 'package:uwords/features/auth/data/constants/auth_paddings.dart';
import 'package:uwords/features/auth/presentation/confirm_page.dart';
import 'package:uwords/features/global/data/constants/global_paddings.dart';
import 'package:uwords/features/global/widgets/bubble_button.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:uwords/features/auth/presentation/widgets/divider_with_text.dart';
import 'package:uwords/features/auth/presentation/widgets/registration_fields.dart';
import 'package:uwords/features/global/widgets/custom_textfield.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:uwords/theme/app_text_styles.dart';
import 'package:uwords/theme/image_source.dart';
import 'package:flutter/cupertino.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final usernameController = TextEditingController();
  final mailController = TextEditingController();
  final passwordController = TextEditingController();
  final codeController = TextEditingController();
  DateTime choosenDate = DateTime.now();
  TextEditingController datePickerController = TextEditingController();
  void _showDatePicker(BuildContext ctx) {
    showCupertinoModalPopup(
        context: ctx,
        builder: (_) => Container(
              height: AuthDesignedConstants.datePickerMaxHeight,
              color: AppColors.whiteColor,
              child: Column(
                children: [
                  SizedBox(
                    height: AuthDesignedConstants.datePickerHeight,
                    child: CupertinoDatePicker(
                        mode: CupertinoDatePickerMode.date,
                        minimumDate: DateTime.fromMillisecondsSinceEpoch(
                            AuthDesignedConstants.minimumDate),
                        showDayOfWeek: false,
                        dateOrder: DatePickerDateOrder.dmy,
                        initialDateTime: DateTime.now(),
                        maximumDate: DateTime.now(),
                        maximumYear: DateTime.now().year,
                        onDateTimeChanged: (val) {
                          setState(() {
                            choosenDate = val;
                            datePickerController.text =
                                DateFormat('dd.MM.yyyy').format(choosenDate);
                          });
                        }),
                  ),
                  CupertinoButton(
                    child: Text(AppLocalizations.of(context).done),
                    onPressed: () {
                      context.pop(choosenDate);
                    },
                  ),
                ],
              ),
            ));
  }

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
            state.whenOrNull(success: (success) {
              switch (success) {
                case AuthSuccess.authorized:
                  context.go("/home");
                case AuthSuccess.sendedCode:
              }
            }, failed: (error) {
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Text(error.name);
                  });
            });
          },
          builder: (context, state) {
            return state.maybeWhen(orElse: () {
              return DecoratedBox(
                decoration: const BoxDecoration(
                  gradient: AppColors.backgroundGradient,
                ),
                child: SafeArea(
                  child: Stack(children: [
                    Image.asset(
                      AppImageSource.headerRegister,
                      width: maximumWidth,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: AuthDesignedPaddings.registerHeaderPadding,
                          left: AuthDesignedPaddings.bigBasePagepadding,
                          right: AuthDesignedPaddings.bigBasePagepadding),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical:
                                    AuthDesignedPaddings.middleEmptySpace),
                            child: Text(
                              AppLocalizations.of(context).accountCreation,
                              style: AppTextStyles.authHeaderText,
                            ),
                          ),
                          CustomTextField(
                            controller: datePickerController,
                            hintText: AppLocalizations.of(context).age,
                            isHidden: false,
                            isErrorDisplay: false,
                            onTap: () => _showDatePicker(context),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                bottom: GlobalPaddings.customTextFieldTop),
                            child: Text.rich(TextSpan(children: [
                              TextSpan(
                                text:
                                    '${AppLocalizations.of(context).chooseYourAge} ',
                                style: AppTextStyles.authSmallestText,
                              ),
                              WidgetSpan(
                                  child: InkWell(
                                    onTap: _launchOurWebsite,
                                    child: Text(
                                      AppLocalizations.of(context)
                                          .confidentiality,
                                      style: AppTextStyles
                                          .authSmallestBoldLinkText,
                                    ),
                                  ),
                                  alignment: PlaceholderAlignment.middle)
                            ])),
                          ),
                          RegistrationFields(
                            usernameController: usernameController,
                            mailController: mailController,
                            passwordController: passwordController,
                            errorMessage:
                                AppLocalizations.of(context).unknowError,
                          ),
                          BubbleButton(null,
                              maximumWidth: maximumWidth -
                                  (AuthDesignedPaddings.bigBasePagepadding),
                              onPressed: () {
                            context.read<AuthBloc>().add(AuthEvent.requestCode(
                                birthDate: choosenDate,
                                emailAddress: mailController.text,
                                password: passwordController.text));
                          }, text: AppLocalizations.of(context).createAccount),
                          DividerWithText(
                            text: AppLocalizations.of(context).or,
                            maximumWidth: maximumWidth -
                                (AuthDesignedPaddings.bigBasePagepadding),
                          ),
                          BubbleButton(
                              SvgPicture.asset(AppImageSource.googleIcon),
                              maximumWidth: maximumWidth -
                                  (AuthDesignedPaddings.bigBasePagepadding),
                              onPressed: () {
                            context
                                .read<AuthBloc>()
                                .add(const AuthEvent.signInWithGoogle());
                          },
                              text: AppLocalizations.of(context)
                                  .signInWithGoogle),
                          const SizedBox(
                              height: AuthDesignedPaddings.emptySpaceVertical),
                          BubbleButton(SvgPicture.asset(AppImageSource.vkIcon),
                              maximumWidth: maximumWidth -
                                  (AuthDesignedPaddings.bigBasePagepadding),
                              onPressed: () {
                            context
                                .read<AuthBloc>()
                                .add(const AuthEvent.signInWithVK());
                          }, text: AppLocalizations.of(context).signInWithVK),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: _launchOurWebsite,
                                child: Text(
                                    AppLocalizations.of(context).conditions,
                                    style: AppTextStyles
                                        .authSmallestLinkTextOpacity),
                              ),
                              Text(
                                AppLocalizations.of(context).and,
                                style: AppTextStyles.authSmallestTextOpacity,
                              ),
                              InkWell(
                                onTap: _launchOurWebsite,
                                child: Text(
                                  AppLocalizations.of(context)
                                      .policyOfConfidentiality,
                                  style:
                                      AppTextStyles.authSmallestLinkTextOpacity,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: AuthDesignedPaddings.basePagePadding,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                  '${AppLocalizations.of(context).alreadyHaveAccount} ',
                                  style: AppTextStyles.authSmallText),
                              InkWell(
                                onTap: () {
                                  context.go("/auth");
                                },
                                child: Text(
                                  AppLocalizations.of(context).signIn,
                                  style: AppTextStyles.authLinkText,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ]),
                ),
              );
            }, success: (success) {
              switch (success) {
                case AuthSuccess.authorized:
                  return const SizedBox();
                case AuthSuccess.sendedCode:
                  return ConfirmPage(
                      requestCode: () {
                        context.read<AuthBloc>().add(AuthEvent.requestCode(
                            birthDate: choosenDate,
                            emailAddress: mailController.text,
                            password: passwordController.text,
                            nickname: usernameController.text));
                      },
                      goBack: () {
                        context
                            .read<AuthBloc>()
                            .add(const AuthEvent.changeDataForRegister());
                      },
                      send: () {
                        context.read<AuthBloc>().add(
                            AuthEvent.registerUser(code: codeController.text));
                      },
                      codeController: codeController,
                      email: mailController.text);
              }
            });
          },
        ),
      ),
    );
  }
}

_launchOurWebsite() async {
  await launchUrlFunction(
      url: Uri(
          scheme: AuthUndesignedConstants.scheme,
          host: AuthUndesignedConstants.baseUrl));
}
