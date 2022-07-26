import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

Future<UserCredential?> signInWithGoogle() async {
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
