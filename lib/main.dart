import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_temp_1/pages/error_page.dart';
import 'package:flutter_temp_1/pages/loading_page.dart';
import 'package:flutter_temp_1/pages/navpages/main_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Clone Tripadvisor App',
      debugShowCheckedModeBanner: false,
      home: CheckAuthState(),
    );
  }
}

class CheckAuthState extends StatefulWidget {
  const CheckAuthState({Key? key}) : super(key: key);

  @override
  State<CheckAuthState> createState() => _CheckAuthStateState();
}

class _CheckAuthStateState extends State<CheckAuthState> {
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.userChanges(),
      builder: (context, snapshot) {
        //Error
        if (snapshot.hasError) {
          return ErrorPage(
            errortext: snapshot.error.toString(),
          );
        } else if (snapshot.connectionState == ConnectionState.waiting) {
          log('${snapshot.connectionState}, ${snapshot.error}');
          return const LoadingPage();
        }
        log('${snapshot.connectionState}');
        return const MainPage();
      },
    );
  }
}
