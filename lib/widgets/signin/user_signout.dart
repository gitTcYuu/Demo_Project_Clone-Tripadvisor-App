import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

Future signOut() async {
  final user = FirebaseAuth.instance.currentUser;
  log('${user?.providerData[0].providerId}');
  if (user?.providerData[0].providerId == 'facebook.com') {
    await FirebaseAuth.instance.signOut();
    await FacebookAuth.instance.logOut();
  } else if (user?.providerData[0].providerId == 'google.com') {
    await FirebaseAuth.instance.signOut();
    await GoogleSignIn().signOut();
  }
}
