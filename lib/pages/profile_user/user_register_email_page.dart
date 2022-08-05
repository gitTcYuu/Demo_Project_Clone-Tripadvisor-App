import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_temp_1/pages/profile_user/user_main_page.dart';
import 'package:flutter_temp_1/pages/profile_user/user_signin_email_page.dart';
import 'package:flutter_temp_1/widgets/text/text_common.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:form_field_validator/form_field_validator.dart';
import '../../widgets/button/button_rounded_route.dart';

class UserRegisterEmailPage extends StatefulWidget {
  final String? email;
  const UserRegisterEmailPage({Key? key, this.email}) : super(key: key);

  @override
  State<UserRegisterEmailPage> createState() => _UserRegisterEmailPageState();
}

class _UserRegisterEmailPageState extends State<UserRegisterEmailPage> {
  final formKeyEmail = GlobalKey<FormState>();
  final formKeyPassword = GlobalKey<FormState>();
  TextEditingController tecEmail = TextEditingController();
  String emailAddress = '';
  String password = '';
  bool hidePass = true;
  bool isChecked = true;

  @override
  void initState() {
    if (widget.email != null) {
      tecEmail.text = widget.email.toString();
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            FontAwesomeIcons.chevronLeft,
            color: Colors.black87,
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: double.maxFinite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: const EdgeInsets.only(top: 15, bottom: 20),
                child: const TextCommon(
                  data: 'สมัครเป็นสมาชิก Tripadvisor',
                  size: 20,
                )),
            // Label Email
            Container(
              margin: const EdgeInsets.only(bottom: 5),
              child: const TextCommon(
                data: 'ที่อยู่อีเมล',
                size: 13,
              ),
            ),
            // Field Email
            Form(
              key: formKeyEmail,
              child: Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: TextFormField(
                  controller: tecEmail,
                  validator: MultiValidator([
                    RequiredValidator(
                        errorText: 'โปรดใส่ที่อยู่อีเมลที่ถูกต้อง'),
                    EmailValidator(errorText: 'รูปแบบอีเมลไม่ถูกต้อง'),
                  ]),
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 15),
                    border: OutlineInputBorder(),
                    hintText: 'ที่อยู่อีเมล',
                    hintStyle: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                  style: const TextStyle(fontSize: 13, color: Colors.black87),
                  onChanged: (value) => setState(() {
                    emailAddress = value;
                  }),
                ),
              ),
            ),
            // Label Password
            Container(
              margin: const EdgeInsets.only(bottom: 5),
              child: const TextCommon(
                data: 'รหัสผ่าน',
                size: 13,
              ),
            ),
            // Field Password
            Form(
              key: formKeyPassword,
              child: Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: TextFormField(
                  obscureText: hidePass,
                  validator: MultiValidator([
                    RequiredValidator(errorText: 'โปรดใส่รหัสผ่านที่ถูกต้อง'),
                  ]),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                    suffixIcon: hidePass == true
                        ? IconButton(
                            onPressed: () {
                              setState(() {
                                hidePass = !hidePass;
                              });
                            },
                            icon: const Icon(
                              FontAwesomeIcons.eye,
                              size: 18,
                              color: Color(0xFF616161),
                            ))
                        : IconButton(
                            onPressed: () {
                              setState(() {
                                hidePass = !hidePass;
                              });
                            },
                            icon: const Icon(FontAwesomeIcons.eyeSlash,
                                size: 18, color: Color(0xFF616161))),
                    border: const OutlineInputBorder(),
                    hintText: 'รหัสผ่าน',
                    hintStyle: const TextStyle(
                      fontSize: 13,
                    ),
                  ),
                  style: const TextStyle(fontSize: 13, color: Colors.black87),
                  onChanged: (value) => setState(() {
                    password = value;
                  }),
                ),
              ),
            ),
            //
            // Check offer user received
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              width: double.maxFinite,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    child: Checkbox(
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        }),
                  ),
                  const Expanded(
                    child: Text(
                      'ใช่ แจ้งให้ฉันทราบเกี่ยบกับข้อเสนอและคุณลักษณะใหม่ ฉันสามารถเลิกรับได้ตลอดเวลา',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //Button Sign In
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              height: 55,
              width: double.maxFinite,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.black87,
                    alignment: Alignment.centerLeft,
                    side: const BorderSide(
                      color: Colors.black87,
                      width: 2,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
                onPressed: () async {
                  //Validate
                  if (formKeyEmail.currentState!.validate()) {
                    if (formKeyPassword.currentState!.validate()) {
                      try {
                        await FirebaseAuth.instance
                            .createUserWithEmailAndPassword(
                          email: emailAddress,
                          password: password,
                        )
                            .then((value) {
                          final user = FirebaseAuth.instance.currentUser;

                          user!.updateDisplayName('Trveller${user.uid}');
                          user.updatePhotoURL(
                              'https://images.unsplash.com/photo-1619360142632-031d811d1678?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDR8NnNNVmpUTFNrZVF8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60');
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const UserMainPage(),
                              ),
                              (route) => route.isFirst);
                        });
                      } on FirebaseAuthException catch (e) {
                        log('${e.code} : ${e.message}');
                        showDialog(
                          barrierDismissible: true,
                          context: context,
                          builder: (context) => AlertDialog(
                            alignment: Alignment.center,
                            backgroundColor: Colors.black.withOpacity(0.7),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            content: SizedBox(
                              height: 90,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const [
                                  TextCommon(
                                    data: 'ไม่สามารถสมัครสมาชิกได้',
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  TextCommon(
                                    data: 'โปรดตรวจสอบอีเมลและรหัสผ่านของคุณ',
                                    color: Colors.white,
                                  ),
                                  TextCommon(
                                    data: 'แล้วลองอีกครั้ง',
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                            actionsAlignment: MainAxisAlignment.center,
                            actions: [
                              TextButton(
                                  style: TextButton.styleFrom(
                                      textStyle: const TextStyle(
                                          decoration:
                                              TextDecoration.underline)),
                                  onPressed: () => Navigator.pop(context),
                                  child: const TextCommon(
                                    data: 'ปิด',
                                    color: Colors.white,
                                  ))
                            ],
                          ),
                        );
                      }
                    }
                  }
                },
                child: const Center(
                    child: TextCommon(
                  data: 'สมัครสมาชิก',
                  color: Colors.white,
                )),
              ),
            ),
            //
            //Button Register
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              height: 55,
              width: double.maxFinite,
              child: ButtonRoundedRoute(
                text: 'เข้าสู่ระบบ',
                route: tecEmail.text.isNotEmpty
                    ? UserSignInEmailPage(
                        email: tecEmail.text,
                      )
                    : const UserSignInEmailPage(),
              ),
            ),
            //
          ],
        ),
      ),
    ));
  }
}
