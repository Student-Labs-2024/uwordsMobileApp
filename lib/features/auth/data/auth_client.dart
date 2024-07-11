import 'package:flutter_login_vk/flutter_login_vk.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthClient {
  final FirebaseAuth auth = FirebaseAuth.instance;

  final vk = VKLogin();

  String uEmail = '';
  String uName = '';
  String uSurName = '';
  String uPhotoURL = '';
  String uPassword = '';
  String providerUid = '';

  //временно что бы не взрывалось ничего
  Future<User?> getUser() async {
    return auth.currentUser;
  }

  Future<void> signInWithVK() async {
    auth.signOut(); // что бы не юыть одновременно в двух логинах
    await vk.initSdk();
    final res = await vk.logIn(scope: [
      VKScope.email,
    ]);
    if (res.isValue) {
      final VKLoginResult result = res.asValue!.value;

      if (result.isCanceled) {
      } else {
        final VKAccessToken? accessToken = result.accessToken;
        if (accessToken != null) {
          final profileRes = await vk.getUserProfile();
          final profile = profileRes.asValue?.value;
          if (profile != null) {
            uName = profile.firstName;
            uSurName = profile.lastName;
            uPhotoURL = profile.photo200 ?? '';
          }
          final uEmail = await vk.getUserEmail();
        } else {}
      }
    } else {
      final errorRes = res.asError!;
      print('Error while log in: ${errorRes.error}');
    }
    // функцияДляОтправкиДанныхДляВКЛог()
  }

  Future<void> printUser() async {
    print(' CURRENT USER: ');
    print(' NAME: $uName ');
    print(' SNAME: $uSurName ');
    print(' EMAIL: $uEmail ');
    print(' PHOTO_URL: $uPhotoURL ');
    print(' PASSWORD: $uPassword ');
    print(' PROVIDER_UID: $providerUid ');
  }

  Future<void> signInWithGoogle() async {
    vk.logOut(); // что бы не юыть одновременно в двух логинах

    final GoogleSignInAccount? user = await GoogleSignIn().signIn();

    final GoogleSignInAuthentication gAuth = await user!.authentication;

    final credential = GoogleAuthProvider.credential(
        accessToken: gAuth.accessToken, idToken: gAuth.idToken);

    final creds = await auth.signInWithCredential(credential);

    providerUid = creds.user?.uid ?? '';
    uEmail = creds.user?.email ?? '';
    // функцияДляОтправкиДанныхДляГуглЛог()
  }

  Future<String> registerUser(
      {required String emailAddress, required String password}) async {
    try {
      final credential = await auth.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return 'weak-password';
      } else if (e.code == 'email-already-in-use') {
        return 'email-already-in-use';
      }
    } catch (e) {
      print(e);
    }
    return 'ok';
  }

  Future<void> signInWithMailPassword(
      {required String emailAddress, required String password}) async {
    vk.logOut();
    auth.signOut();

    uPassword = password;
    uEmail = emailAddress;
    // функцияДляОтправкиДанныхДляМейлПас()
  }
}
