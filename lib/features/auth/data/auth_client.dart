import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthClient {
  final FirebaseAuth auth = FirebaseAuth.instance;

  Future<User?> getUser() async {
    print(' CURRENT USER ${auth.currentUser}');
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

  Future<void> registerUser(
      {required String emailAddress, required String password}) async {
    try {
      final credential = await auth.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  Future<void> signInWithMailPassword(
      {required String emailAddress, required String password}) async {
    try {
      final credential = await auth.signInWithEmailAndPassword(
          email: emailAddress, password: password);
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString("uid", "${credential.user?.uid}");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }
}
