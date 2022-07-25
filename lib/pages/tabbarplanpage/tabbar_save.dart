import 'package:flutter/material.dart';
import 'package:flutter_temp_1/widgets/text/text_common.dart';
import '../../widgets/tabbarpage/button_text_signin.dart';

class TabBarSavePage extends StatelessWidget {
  const TabBarSavePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          const ButtonTextSignIn(text: 'เข้าสู่ระบบเพื่อเข้าถึงบันทึกของคุณ'),
        ],
      ),
    );
  }
}
