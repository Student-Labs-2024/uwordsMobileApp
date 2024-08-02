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
import 'package:uwords/features/auth/presentation/auth_designed_constants.dart';
import 'package:uwords/features/auth/presentation/auth_paddings.dart';
import 'package:uwords/features/auth/presentation/widgets/bubble_button.dart';
import 'package:uwords/features/auth/presentation/widgets/custom_pincode.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:uwords/features/auth/presentation/widgets/divider_with_text.dart';
import 'package:uwords/features/auth/presentation/widgets/registration_fields.dart';
import 'package:uwords/features/main/data/constants/box_shadows.dart';
import 'package:uwords/features/main/data/constants/home_page_paddings.dart';
import 'package:uwords/features/main/data/constants/home_page_sizes.dart';
import 'package:uwords/theme/app_colors.dart';
import 'package:uwords/theme/app_text_styles.dart';
import 'package:uwords/theme/image_source.dart';
import 'package:flutter_inset_shadow/flutter_inset_shadow.dart' as fis;
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
              return SafeArea(
                child: DecoratedBox(
                  decoration: const BoxDecoration(
                    gradient: AppColors.backgroundGradient,
                  ),
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
                          Container(
                            height: HomePageComponentSizes.linkTextFieldHeight,
                            padding: const EdgeInsets.symmetric(
                                horizontal: HomePagePaddings.baseHorizontal),
                            decoration: fis.BoxDecoration(
                                color: AppColors.whiteBackgroundColor,
                                borderRadius: BorderRadius.circular(
                                    AuthDesignedConstants
                                        .customTextFieldBorderRadius),
                                boxShadow: MainBoxShadows.main),
                            child: Column(
                              children: [
                                Expanded(
                                  child: TextField(
                                    textAlignVertical: TextAlignVertical.center,
                                    expands: true,
                                    maxLines: null,
                                    minLines: null,
                                    controller: datePickerController,
                                    readOnly: true,
                                    onTap: () => _showDatePicker(context),
                                    obscureText: false,
                                    cursorColor: AppColors.darkMainColor,
                                    style: const TextStyle(
                                      color: AppColors.darkMainColor,
                                    ),
                                    decoration: InputDecoration(
                                      hintText:
                                          AppLocalizations.of(context).age,
                                      hintStyle:
                                          AppTextStyles.customTextfieldInput,
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: AuthDesignedPaddings.smallEmptySpace),
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
                              passwordController: passwordController),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: AuthDesignedPaddings.smallEmptySpace),
                            child: BubbleButton(null,
                                maximumWidth: maximumWidth -
                                    (AuthDesignedPaddings.bigBasePagepadding),
                                onPressed: () async {
                              context.read<AuthBloc>().add(
                                  AuthEvent.requestCode(
                                      birthDate: choosenDate,
                                      emailAddress: mailController.text,
                                      password: passwordController.text));
                            },
                                text:
                                    AppLocalizations.of(context).createAccount),
                          ),
                          DividerWithText(
                            text: AppLocalizations.of(context).or,
                            maximumWidth: maximumWidth -
                                (AuthDesignedPaddings.bigBasePagepadding),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: AuthDesignedPaddings.smallEmptySpace),
                            child: BubbleButton(AppImageSource.googleIcon,
                                maximumWidth: maximumWidth -
                                    (AuthDesignedPaddings.bigBasePagepadding),
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
                                  (AuthDesignedPaddings.bigBasePagepadding),
                              onPressed: () async {
                            context
                                .read<AuthBloc>()
                                .add(const AuthEvent.signInWithVK());
                          }, text: AppLocalizations.of(context).signInWithVK),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Spacer(),
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
                              const Spacer(),
                            ],
                          ),
                          const SizedBox(
                            height: AuthDesignedPaddings.basePagePadding,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Spacer(),
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
                              const Spacer()
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
                  return SafeArea(
                      child: DecoratedBox(
                    decoration: const BoxDecoration(
                      gradient: AppColors.backgroundGradient,
                    ),
                    child: Center(
                      child: Stack(children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: AuthDesignedPaddings.bubblesPadding),
                          child: Image.asset(
                            AppImageSource.topCodeBackground,
                            width: maximumWidth,
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(
                                top: AuthDesignedPaddings.returnButtonPlace,
                                left: AuthDesignedPaddings.returnButtonPlace),
                            child: InkWell(
                              child: SvgPicture.asset(
                                AppImageSource.returnIcon,
                                width: AuthDesignedConstants.iconReturnSize,
                                height: AuthDesignedConstants.iconReturnSize,
                              ),
                              onTap: () {
                                context.read<AuthBloc>().add(
                                    const AuthEvent.changeDataForRegister());
                              },
                            )),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: AuthDesignedPaddings
                                      .sendCodeHeaderPadding,
                                  left: AuthDesignedPaddings.middlePagePadding,
                                  right:
                                      AuthDesignedPaddings.middlePagePadding),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: AuthDesignedPaddings
                                            .middleEmptySpace),
                                    child: Text(
                                      AppLocalizations.of(context).enterCode,
                                      style: AppTextStyles.authHeaderText,
                                    ),
                                  ),
                                  Text(
                                    "${AppLocalizations.of(context).useCodeToEnter}${mailController.text}",
                                    style: AppTextStyles.authSendedCodeText,
                                  ),
                                  const SizedBox(
                                    height:
                                        AuthDesignedPaddings.smallEmptySpace,
                                  ),
                                  CustomPincode(
                                      textEditingController: codeController),
                                  Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: AuthDesignedPaddings
                                              .smallEmptySpace),
                                      child: BubbleButton(
                                        null,
                                        maximumWidth: maximumWidth -
                                            (AuthDesignedPaddings
                                                .basePagePadding),
                                        onPressed: () async {
                                          context.read<AuthBloc>().add(
                                              AuthEvent.registerUser(
                                                  code: codeController.text));
                                        },
                                        text: AppLocalizations.of(context)
                                            .sendCode,
                                      )),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        AppLocalizations.of(context)
                                            .haveNotGotCode,
                                        style: AppTextStyles.authSendedCodeText,
                                      ),
                                      TextButton(
                                        onPressed: () async {
                                          context.read<AuthBloc>().add(
                                              AuthEvent.requestCode(
                                                  birthDate: choosenDate,
                                                  emailAddress:
                                                      mailController.text,
                                                  password:
                                                      passwordController.text,
                                                  nickname:
                                                      usernameController.text));
                                        },
                                        child: Text(
                                            AppLocalizations.of(context)
                                                .sendAgain,
                                            style: AppTextStyles
                                                .authSendedCodeUnderlinedText),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            const Spacer(),
                            Image.asset(
                              AppImageSource.bottomCodeBackground,
                              width: maximumWidth,
                            ),
                            const Spacer()
                          ],
                        ),
                      ]),
                    ),
                  ));
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
