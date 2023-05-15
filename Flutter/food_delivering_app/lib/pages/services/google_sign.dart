import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInProvider extends ChangeNotifier {
  final googleSignIn = GoogleSignIn();

  String? Gphoto;
  String? Gemail;
  String? Gname;

  GoogleSignInAccount? _user;

  GoogleSignInAccount get user => _user!;

  Future googleLogin() async {
    try {
      final googleUser = await googleSignIn.signIn();
      if (googleUser == null) return;
      _user = googleUser;

      final googleAuth = await googleUser.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      await FirebaseAuth.instance.signInWithCredential(credential);
    } catch (e) {
      print(e.toString());
    }

    if (_user != null) {
      Gphoto = user.photoUrl;
      Gemail = user.email;
      Gname = user.displayName;
    }

    print('user signin with google ');

    notifyListeners();
  }

  Future googleLogout() async {
    await googleSignIn.signOut();
    FirebaseAuth.instance.signOut();

    Gemail = null;
    Gphoto = null;
    Gname = null;

    print('User signout of google');
  }
}
