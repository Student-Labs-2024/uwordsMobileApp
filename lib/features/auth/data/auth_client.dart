import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthClient {
  final FirebaseAuth auth = FirebaseAuth.instance;

  Future<User?> getUser() async {
    return auth.currentUser;
  }

  Future<String> signInWithGoogle() async {
    final GoogleSignInAccount? user = await GoogleSignIn().signIn();

    final GoogleSignInAuthentication gAuth = await user!.authentication;

    final credential = GoogleAuthProvider.credential(
        accessToken: gAuth.accessToken, idToken: gAuth.idToken);

    final creds = await auth.signInWithCredential(credential);

    final prefs = await SharedPreferences.getInstance();
    await prefs.setString("uid", "${creds.user?.uid}");

    return creds.user!.uid;
  }
}
