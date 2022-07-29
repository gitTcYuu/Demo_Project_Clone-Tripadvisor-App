import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

//Native
Future<UserCredential?> signInWithGoogleNative() async {
  //Trigger Auth Flow
  final GoogleSignInAccount? googleSignInAccount =
      await GoogleSignIn().signIn();

  //Obtain Auth from request
  final GoogleSignInAuthentication? googleSignInAuthentication =
      await googleSignInAccount?.authentication;

  //Create new credential
  final credential = GoogleAuthProvider.credential(
    accessToken: googleSignInAuthentication?.accessToken,
    idToken: googleSignInAuthentication?.idToken,
  );

  return await FirebaseAuth.instance.signInWithCredential(credential);
}

//Web
Future<UserCredential?> signInWithGoogleWeb() async {
//Create provider
  GoogleAuthProvider googleAuthProvider = GoogleAuthProvider();

  googleAuthProvider
      .addScope('https://www.googleapis.com/auth/contacts.readonly');
  googleAuthProvider.setCustomParameters({'login_hint': 'user@example.com'});

  return await FirebaseAuth.instance.signInWithPopup(googleAuthProvider);
}

Future signOut() async {
  await FirebaseAuth.instance.signOut();
  await GoogleSignIn().signOut();
}
