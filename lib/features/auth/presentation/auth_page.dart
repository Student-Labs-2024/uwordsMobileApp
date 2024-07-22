import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:uwords/features/auth/bloc/auth_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:uwords/features/auth/data/repository/interface_user_repository.dart';
import 'package:uwords/features/auth/presentation/widgets/custom_textfield.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final usernameController = TextEditingController();
  final mailController = TextEditingController();
  final passwordController = TextEditingController();
  final codeController = TextEditingController();
  DateTime choosenDate = DateTime.now();
  TextEditingController datePickerController = TextEditingController();
  onTapFunction({required BuildContext context}) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      lastDate: DateTime.now(),
      firstDate: DateTime(2015),
      initialDate: DateTime.now(),
    );
    if (pickedDate == null) return;
    choosenDate = pickedDate;
    datePickerController.text = DateFormat('yyyy-MM-dd').format(pickedDate);
  }

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
              initial: () {},
              authorized: () {
                context.go("/home");
              },
            );
          },
          builder: (context, state) {
            return state.maybeWhen(orElse: () {
              return SafeArea(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    const Icon(
                      Icons.lock_outlined,
                      size: 150,
                      color: Colors.black,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          AppLocalizations.of(context).dontHaveAnAccount,
                          style: const TextStyle(
                              color: Colors.brown, fontSize: 20),
                        ),
                        Text(
                          AppLocalizations.of(context).signUp,
                          style: const TextStyle(
                              color: Colors.brown,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    TextField(
                      controller: datePickerController,
                      readOnly: true,
                      decoration: const InputDecoration(
                          hintText: "Click here to select date"),
                      onTap: () => onTapFunction(context: context),
                    ),
                    CustomTextField(
                      controller: usernameController,
                      hintText: "username please",
                      obscoreText: false,
                    ),
                    CustomTextField(
                      controller: mailController,
                      hintText: AppLocalizations.of(context).mail,
                      obscoreText: false,
                    ),
                    const SizedBox(
                      height: 5,
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
                                emailAddress: mailController.text,
                                password: passwordController.text));
                      },
                      child: Text(
                          AppLocalizations.of(context).signInWithMailPassword),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        context.read<AuthBloc>().add(AuthEvent.requestCode(
                            nickname: usernameController.text,
                            birthDate: choosenDate,
                            emailAddress: mailController.text,
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
            }, sendedCode: () {
              return Center(
                child: Column(
                  children: [
                    CustomTextField(
                      controller: codeController,
                      hintText: '',
                      obscoreText: false,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          context.read<AuthBloc>().add(AuthEvent.registerUser(
                              code: codeController.text));
                        },
                        child: const Text("Подтвердить код"))
                  ],
                ),
              );
            });
          },
        ),
      ),
    );
  }
}
