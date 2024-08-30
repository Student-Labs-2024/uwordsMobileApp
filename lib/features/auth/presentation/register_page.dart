import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:uwords/common/utils/url_launch.dart';
import 'package:uwords/common/utils/valid_string_check.dart';
import 'package:uwords/features/auth/bloc/auth_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:uwords/features/auth/bloc/auth_enum.dart';
import 'package:uwords/features/auth/data/auth_undesigned_constants.dart';
import 'package:uwords/features/auth/data/repository/interface_user_repository.dart';
import 'package:uwords/features/auth/presentation/constants/auth_designed_constants.dart';
import 'package:uwords/features/auth/presentation/constants/auth_paddings.dart';
import 'package:uwords/features/auth/domain/validation.dart';
import 'package:uwords/features/auth/presentation/confirm_page.dart';
import 'package:uwords/features/auth/presentation/widgets/custom_textfield_with_rules.dart';
import 'package:uwords/features/global/presentation/widgets/constants/global_paddings.dart';
import 'package:uwords/features/global/presentation/widgets/bubble_button.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:uwords/features/auth/presentation/widgets/divider_with_text.dart';
import 'package:uwords/features/auth/presentation/widgets/registration_fields.dart';
import 'package:uwords/features/home_widget/home_widget_functions.dart';
import 'package:uwords/features/learn/presentation/constants/other_learn_constants.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:uwords/theme/app_text_styles.dart';
import 'package:uwords/theme/image_source.dart';
import 'package:flutter/cupertino.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage>
    with TickerProviderStateMixin {
  final usernameController = TextEditingController();
  final mailController = TextEditingController();
  final passwordController = TextEditingController();
  final codeController = TextEditingController();
  String inputState = OtherLearnConstants.stateZero;
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
                        initialDateTime: AuthDesignedConstants.maximumDate,
                        maximumYear: AuthDesignedConstants.maximumYear,
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

  void updateValidDataForButton() {
    if (datePickerController.text.isNotEmpty &&
        isCorrectEmail(email: mailController.text) &&
        isCorrectPassword(password: passwordController.text)) {
      inputState = OtherLearnConstants.stateActive;
    } else {
      inputState = OtherLearnConstants.stateZero;
    }
  }

  @override
  void initState() {
    context.read<AuthBloc>().add(const AuthEvent.autoLogin());
    super.initState();
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
            state.whenOrNull(success: (success) {
              switch (success) {
                case AuthSuccess.authorized:
                  updateHomeWidgetByUserData(context: context);
                  context.go("/home");
                case AuthSuccess.educationNotCompleted:
                  context.go("/onboarding");
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
            return state.maybeWhen(waitingAnswer: () {
              return const DecoratedBox(
                decoration: BoxDecoration(
                  gradient: AppColors.backgroundGradient,
                ),
                child: SafeArea(
                  child: Center(
                      child: CircularProgressIndicator(
                    color: AppColors.darkMainColor,
                  )),
                ),
              );
            }, orElse: () {
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
                          CustomTextFieldWithRules(
                            controller: datePickerController,
                            hintText: AppLocalizations.of(context).age,
                            isHidden: false,
                            isErrorDisplay: true,
                            onTap: () => _showDatePicker(context),
                            validationRules: validationDatePickerRules,
                            isReadOnly: true,
                            isRequiredField: true,
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
                              state: inputState,
                              maximumWidth: maximumWidth -
                                  (AuthDesignedPaddings.bigBasePagepadding),
                              onPressed: () {
                            context.read<AuthBloc>().add(AuthEvent.requestCode(
                                birthDate: choosenDate,
                                emailAddress: mailController.text,
                                password: passwordController.text,
                                nickname: usernameController.text));
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
                            height: AuthDesignedPaddings.middleEmptySpace,
                          ),
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
                case AuthSuccess.educationNotCompleted:
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
