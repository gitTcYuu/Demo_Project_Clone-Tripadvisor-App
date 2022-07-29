import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_temp_1/widgets/text/text_common.dart';
import '../../widgets/button/button_text_signin.dart';

class TabBarSavePage extends StatefulWidget {
  const TabBarSavePage({Key? key}) : super(key: key);

  @override
  State<TabBarSavePage> createState() => _TabBarSavePageState();
}

class _TabBarSavePageState extends State<TabBarSavePage> {
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
                Container(
                  margin: const EdgeInsets.only(top: 20, bottom: 10),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      TextCommon(data: 'ยังไม่มีรายการที่บันทึก'),
                      TextCommon(data: 'สถานที่ที่คุณบันทึกจะปรากฏที่นี่'),
                    ],
                  ),
                ),
                //User Sign in
                snapshot.hasData
                    ? Container()
                    : const ButtonTextSignIn(
                        text: 'เข้าสู่ระบบเพื่อเข้าถึงบันทึกของคุณ'),
              ],
            ),
          );
        });
  }
}
