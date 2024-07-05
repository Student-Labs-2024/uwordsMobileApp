import 'package:flutter/material.dart';
import 'package:uwords/features/auth/data/auth_client.dart';
import 'package:go_router/go_router.dart';
import 'package:uwords/features/auth/presentation/widgets/custom_textfield.dart';
import 'package:uwords/features/auth/presentation/widgets/signin_button.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Icon(
              Icons.lock_outlined,
              size: 150,
              color: Colors.black,
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
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
            SizedBox(
              height: 30,
            ),
            CustomTextField(
              controller: usernameController,
              hintText: 'Почта',
              obscoreText: false,
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextField(
              controller: passwordController,
              hintText: 'Пароль',
              obscoreText: true,
            ),
            ElevatedButton(
              onPressed: () async {
                await AuthClient().signInWithMailPassword(
                    emailAddress: usernameController.text,
                    password: passwordController.text);
              },
              child: Text("Войти"),
            ),
            ElevatedButton(
              onPressed: () async {
                await AuthClient().registerUser(
                    emailAddress: usernameController.text,
                    password: passwordController.text);
              },
              child: Text("Зарегать"),
            ),
            ElevatedButton(
              onPressed: () async {
                await AuthClient().signInWithGoogle();
              },
              child: Text("ВойтиГугл"),
            ),
            ElevatedButton(
              onPressed: () async {
                context.go("/home");
              },
              child: Text("goHome"),
            ),
            ElevatedButton(
              onPressed: () async {
                print(' ---------->>> ВЫВОД ЮЗЕРА');
                AuthClient().getUser();
                print(' <<<---------- ВЫВОД ЮЗЕРА');
              },
              child: Text("getUser"),
            ),
          ],
        ),
      ),
    );
  }
}
