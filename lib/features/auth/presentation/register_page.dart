import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:uwords/features/auth/bloc/auth_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:uwords/features/auth/bloc/auth_enum.dart';
import 'package:uwords/features/auth/data/auth_undesigned_constants.dart';
import 'package:uwords/features/auth/data/repository/interface_user_repository.dart';
import 'package:uwords/features/auth/presentation/widgets/bubble_button.dart';
import 'package:uwords/features/auth/presentation/widgets/custom_textfield.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:uwords/features/auth/presentation/widgets/divider_with_text.dart';
import 'package:uwords/features/auth/presentation/widgets/mail_and_password_fileds.dart';
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
    // showCupertinoModalPopup is a built-in function of the cupertino library
    showCupertinoModalPopup(
        context: ctx,
        builder: (_) => Container(
              height: 500,
              color: const Color.fromARGB(255, 255, 255, 255),
              child: Column(
                children: [
                  SizedBox(
                    height: 400,
                    child: CupertinoDatePicker(
                        mode: CupertinoDatePickerMode.date,
                        minimumDate:
                            DateTime.fromMillisecondsSinceEpoch(-2191196888000),
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
                    child: Text('Done'),
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
                // TODO: Handle this case.
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
                    gradient: LinearGradient(colors: [
                      AppColors.gradientBackgroundColor1,
                      AppColors.gradientBackgroundColor2
                    ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                  ),
                  child: Stack(children: [
                    Image.asset(
                      AppImageSource.headerRegister,
                      width: maximumWidth,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 70,
                          bottom: 32,
                          left: HomePagePaddings.baseHorizontal * 3,
                          right: HomePagePaddings.baseHorizontal * 3),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12.0),
                            child: Text(
                              AppLocalizations.of(context).accountCreation,
                              style: AppTextStyles.authHeaderText,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                AppLocalizations.of(context).chooseYourAge,
                                style: AppTextStyles.authSmallText,
                                textAlign: TextAlign.left,
                              ),
                              Text(
                                AppLocalizations.of(context).confidentiality,
                                style: AppTextStyles.authSmallestLinkText,
                                textAlign: TextAlign.left,
                              )
                            ],
                          ),
                          Container(
                            height: HomePageComponentSizes.linkTextFieldHeight,
                            padding: const EdgeInsets.symmetric(
                                horizontal: HomePagePaddings.baseHorizontal),
                            decoration: fis.BoxDecoration(
                                color: AppColors.whiteBackgroundColor,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: MainBoxShadows.main),
                            child: TextField(
                              controller: datePickerController,
                              readOnly: true,
                              onTap: () => _showDatePicker(context),
                              obscureText: false,
                              cursorColor: AppColors.darkMainColor,
                              style: const TextStyle(
                                color: AppColors.darkMainColor,
                              ),
                              decoration: InputDecoration(
                                hintText: AppLocalizations.of(context).age,
                                hintStyle: AppTextStyles.customTextfieldInput,
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: AuthUndesignedConstants.smallestContainer,
                          ),
                          RegistrationFields(
                              usernameController: usernameController,
                              mailController: mailController,
                              passwordController: passwordController),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: BubbleButton(null,
                                maximumWidth: maximumWidth -
                                    (HomePagePaddings.baseHorizontal * 3),
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
                                (HomePagePaddings.baseHorizontal * 3),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: BubbleButton(AppImageSource.googleIcon,
                                maximumWidth: maximumWidth -
                                    (HomePagePaddings.baseHorizontal * 3),
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
                                  (HomePagePaddings.baseHorizontal * 3),
                              onPressed: () async {
                            context
                                .read<AuthBloc>()
                                .add(const AuthEvent.signInWithVK());
                          }, text: AppLocalizations.of(context).signInWithVK),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Spacer(),
                              Text(
                                  AppLocalizations.of(context)
                                      .alreadyHaveAccount,
                                  style: AppTextStyles.authSmallText),
                              TextButton(
                                onPressed: () {
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
            }, waitingAnswer: () {
              return Center(
                child: Column(
                  children: [
                    const CircularProgressIndicator(),
                    Text(AppLocalizations.of(context).checkingLoginData),
                  ],
                ),
              );
            }, success: (success) {
              switch (success) {
                case AuthSuccess.authorized:
                  return const SizedBox();
                case AuthSuccess.sendedCode:
                  return Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomAuthTextField(
                          controller: codeController,
                          hintText: '',
                          notHidden: false,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              context.read<AuthBloc>().add(
                                  AuthEvent.registerUser(
                                      code: codeController.text));
                            },
                            child: const Text("Подтвердить код"))
                      ],
                    ),
                  );
              }
            });
          },
        ),
      ),
    );
  }
}
