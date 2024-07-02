import 'package:flutter/material.dart';
import 'package:uwords/features/auth/data/auth_client.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            await AuthClient().signInWithGoogle();
          },
          child: Text("AUTH"),
        ),
      ),
    );
  }
}
