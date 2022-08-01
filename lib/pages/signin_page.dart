import 'dart:developer';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_temp_1/widgets/signin/facebook_auth.dart';
import 'package:flutter_temp_1/widgets/signin/google_auth.dart';
import 'package:flutter_temp_1/widgets/text/text_header.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/text/text_common.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({Key? key}) : super(key: key);

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: true,
      child: ListView(
        children: [
          //
          Container(
            margin: const EdgeInsets.only(top: 20, bottom: 30),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    FontAwesomeIcons.xmark,
                    size: 25,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
          //
          Container(
            margin: const EdgeInsets.only(bottom: 15),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            height: 90,
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 90,
                  width: 90,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://static.tacdn.com/img2/brand_refresh/Tripadvisor_logoset_solid_green.svg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          //
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const TextHeader(data: 'เข้าสู่ระบบเพื่อเริ่มวางแผน'),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const TextHeader(data: 'ทริปของคุณ'),
          ),
          //
          Container(
            margin: const EdgeInsets.only(top: 20, bottom: 20),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: RichText(
                text: TextSpan(children: [
              const TextSpan(
                  text: 'หากคุณดำเนินการ หมายความว่าคุณยอมรับ',
                  style: TextStyle(fontSize: 13, color: Colors.black87)),
              TextSpan(
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    log('On Tap : ข้อกำหนดการใช้งาน');
                  },
                text: 'ข้อกำหนดการใช้งาน',
                style: const TextStyle(
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: Colors.black87,
                ),
              ),
              const TextSpan(
                  text: ' และยืนยันว่าคุณได้อ่าน',
                  style: TextStyle(fontSize: 13, color: Colors.black87)),
              TextSpan(
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    log('On Tap : คำแถลงเกี่ยวกับคุกกี้และความเป็นส่วนตัว');
                  },
                text: 'คำแถลงเกี่ยวกับคุกกี้และความเป็นส่วนตัว',
                style: const TextStyle(
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: Colors.black87,
                ),
              ),
              const TextSpan(
                  text: ' ของเราแล้ว',
                  style: TextStyle(fontSize: 13, color: Colors.black87)),
              //
            ])),
          ),
          // Google Sign In
          Container(
              margin: const EdgeInsets.only(bottom: 15),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 55,
              child: OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      side: const BorderSide(
                        color: Colors.black87,
                        width: 2,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                  onPressed: () async {
                    try {
                      // Check Platform
                      if (kIsWeb) {
                        await signInWithGoogleWeb().then((value) {
                          //
                          Fluttertoast.showToast(
                              msg: 'Welcome, ${value!.user!.displayName}',
                              gravity: ToastGravity.BOTTOM,
                              timeInSecForIosWeb: 1,
                              fontSize: 14);
                          //
                          Navigator.pop(context);
                        });
                      } else {
                        await signInWithGoogleNative().then((value) {
                          //
                          Fluttertoast.showToast(
                              msg: 'Welcome, ${value!.user!.displayName}',
                              gravity: ToastGravity.BOTTOM,
                              timeInSecForIosWeb: 1,
                              fontSize: 14);
                          //
                          Navigator.pop(context);
                        });
                      }
                    } on FirebaseAuthException catch (e) {
                      String msg = '${e.code} : ${e.message}';
                      Fluttertoast.showToast(
                          msg: msg,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          fontSize: 14);
                    }
                  },
                  icon: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      height: 25,
                      width: 25,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://png.monster/wp-content/uploads/2020/11/b64cc812d68e951149b3e1a21c9a49e7-12019a02.png'),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  label: Center(
                      child: RichText(
                          text: const TextSpan(children: [
                    TextSpan(
                        text: 'ดำเนินการต่อด้วย ',
                        style: TextStyle(fontSize: 16, color: Colors.black87)),
                    TextSpan(
                        text: 'Google',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold))
                  ]))))),

          // Facebook Sign In
          Container(
              margin: const EdgeInsets.only(bottom: 15),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 55,
              child: OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      side: const BorderSide(
                        color: Colors.black87,
                        width: 2,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                  onPressed: () async {
                    try {
                      // Check Platform
                      if (kIsWeb) {
                        await signInWithFacebookWeb().then((value) {
                          //
                          Fluttertoast.showToast(
                              msg: 'Welcome, ${value.user!.displayName}',
                              gravity: ToastGravity.BOTTOM,
                              timeInSecForIosWeb: 1,
                              fontSize: 14);
                          //
                          Navigator.pop(context);
                        });
                      } else {
                        await signInWithFacebookNative().then((value) {
                          //
                          Fluttertoast.showToast(
                              msg: 'Welcome, ${value.user!.displayName}',
                              gravity: ToastGravity.BOTTOM,
                              timeInSecForIosWeb: 1,
                              fontSize: 14);
                          //
                          Navigator.pop(context);
                        });
                      }
                    } on FirebaseAuthException catch (e) {
                      String msg = '${e.code} : ${e.message}';
                      log(msg);
                      Fluttertoast.showToast(
                          msg: msg,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          fontSize: 14);
                    }
                  },
                  icon: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      height: 25,
                      width: 25,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Facebook_Logo_%282019%29.png/1200px-Facebook_Logo_%282019%29.png'),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  label: Center(
                      child: RichText(
                          text: const TextSpan(children: [
                    TextSpan(
                        text: 'ดำเนินการต่อด้วย ',
                        style: TextStyle(fontSize: 16, color: Colors.black87)),
                    TextSpan(
                        text: 'Facebook',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold))
                  ]))))),

          // Email Sign In
          Container(
            margin: const EdgeInsets.only(bottom: 15),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            height: 55,
            child: OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                    alignment: Alignment.centerLeft,
                    side: const BorderSide(
                      color: Colors.black87,
                      width: 2,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
                onPressed: () {},
                icon: const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Icon(
                    FontAwesomeIcons.envelope,
                    color: Colors.grey,
                  ),
                ),
                label: const Center(
                    child: TextCommon(data: 'ดำเนินการต่อด้วยอีเมล'))),
          ),
        ],
      ),
    );
  }
}
