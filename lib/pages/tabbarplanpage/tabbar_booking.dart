import 'package:flutter/material.dart';
import '../../widgets/tabbarpage/button_text_signin.dart';

class TabBarBookingPage extends StatelessWidget {
  const TabBarBookingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      width: double.maxFinite,
      child: Column(
        children: const [
          SizedBox(
            height: 50,
          ),
          //User Sign in
          ButtonTextSignIn(text: 'เข้าสู่ระบบเพื่อเข้าถึงการจองของคุณ'),
        ],
      ),
    );
  }
}
