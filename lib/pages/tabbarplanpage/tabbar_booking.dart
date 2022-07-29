import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../widgets/button/button_text_signin.dart';

class TabBarBookingPage extends StatefulWidget {
  const TabBarBookingPage({Key? key}) : super(key: key);

  @override
  State<TabBarBookingPage> createState() => _TabBarBookingPageState();
}

class _TabBarBookingPageState extends State<TabBarBookingPage> {
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        stream: auth.userChanges(),
        builder: (context, snapshot) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            width: double.maxFinite,
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                //User Sign in
                snapshot.hasData
                    ? Container()
                    : const ButtonTextSignIn(
                        text: 'เข้าสู่ระบบเพื่อเข้าถึงการจองของคุณ'),
              ],
            ),
          );
        });
  }
}
