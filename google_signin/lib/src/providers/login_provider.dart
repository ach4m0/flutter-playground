import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginProvider with ChangeNotifier {
  
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseUser _user;

  bool _loggedIn = false;
  bool isLoading = false;

  bool isLoggedIn() => _loggedIn;

  String getUserName() => _user.displayName;

  void login() {
    isLoading = true;
    notifyListeners();

    _handleSignIn()
      .then((FirebaseUser user) {
        _user = user;
        isLoading = false;
        _loggedIn = true;
        notifyListeners();
      })
      .catchError((error) {
        isLoading = false;
        notifyListeners();
        print(error);
      });
  }

  void logout() {
    _handleSignOut()
      .then((_) {
        _loggedIn = false;
        notifyListeners();
      });
  }

  Future<FirebaseUser> _handleSignIn() async {
    final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

    final AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    final FirebaseUser user = (await _auth.signInWithCredential(credential)).user;
    return user;
  }

  Future<void> _handleSignOut() => _googleSignIn.disconnect();

}