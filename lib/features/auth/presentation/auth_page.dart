import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uwords/features/auth/bloc/auth_bloc.dart';
import 'package:uwords/features/auth/data/auth_client.dart';
import 'package:go_router/go_router.dart';
import 'package:uwords/features/auth/presentation/widgets/custom_textfield.dart';

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
      backgroundColor: Colors.brown[100],
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          state.whenOrNull(initial: () {
            debugPrint("Initial");
          }, authorized: () {
            context.go("/home");
          }, registred: () {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text("Вы были успешно зарегестрированы")));
          }, failedRegisteration: () {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text("Регистрация завершена с ошибкой")));
          }, failedSignIn: () {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Не удалось выполнить вход")));
          });
        },
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () {
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
                      height: 40,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don\'t have an account?',
                          style: TextStyle(color: Colors.brown, fontSize: 20),
                        ),
                        Text(
                          ' SIGN UP',
                          style: TextStyle(
                              color: Colors.brown,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomTextField(
                      controller: usernameController,
                      hintText: 'Почта',
                      obscoreText: false,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextField(
                      controller: passwordController,
                      hintText: 'Пароль',
                      obscoreText: true,
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        context.read<AuthBloc>().add(
                            AuthEvent.signInWithMailPassword(
                                emailAddress: usernameController.text,
                                password: passwordController.text));
                      },
                      child: Text("Войти через почту и пароль"),
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        context.read<AuthBloc>().add(AuthEvent.registerUser(
                            emailAddress: usernameController.text,
                            password: passwordController.text));
                        // if(regUser == 'ok') тотото
                        //не окей, то соответствующие снекбары
                      },
                      child: Text("Зарегать пользователя через почту и пароль"),
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        context
                            .read<AuthBloc>()
                            .add(const AuthEvent.signInWithGoogle());
                      },
                      child: Text("Войти через гугл"),
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        context
                            .read<AuthBloc>()
                            .add(const AuthEvent.signInWithVK());
                      },
                      child: Text("Войти через ВК"),
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        context.go("/home");
                      },
                      child: Text("goHome сразу другая страница"),
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        context.read<AuthBloc>().add(const AuthEvent.logOut());
                      },
                      child: Text("Выйти из любого пользователя"),
                    ),
                  ],
                ),
              );
            },
            waitingAnswer: () {
              return const Center(
                child: Column(
                  children: [
                    CircularProgressIndicator(),
                    Text("Подождите выполняется проверка данных"),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
