import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

//Native
Future<UserCredential?> signInWithFacebookNative() async {
  //Trigger sign-in flow
  final LoginResult loginResult = await FacebookAuth.instance.login();

  //Create a Credenial
  final OAuthCredential facebookAuthCredential =
      FacebookAuthProvider.credential(loginResult.accessToken!.token);
  //Once Signed in, return UserCredential
  return await FirebaseAuth.instance
      .signInWithCredential(facebookAuthCredential);
}

//Web
Future<UserCredential?> signInWithFacebookWeb() async {
  //Create Provider
  FacebookAuthProvider facebookAuthProvider = FacebookAuthProvider();

  facebookAuthProvider.addScope('email');
  facebookAuthProvider.setCustomParameters({
    'display': 'popup',
  });

  //Once Signed in, return UserCredential
  return await FirebaseAuth.instance.signInWithPopup(facebookAuthProvider);
}
