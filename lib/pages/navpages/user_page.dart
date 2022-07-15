import 'package:flutter/material.dart';
import 'package:flutter_temp_1/widgets/card_button.dart';
import 'package:flutter_temp_1/widgets/common_text.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:form_field_validator/form_field_validator.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      extendBody: true,
      body: Container(
        margin: const EdgeInsets.only(bottom: 20),
        padding: const EdgeInsets.all(30),
        height: double.maxFinite,
        width: double.maxFinite,
        color: Colors.white,
        child: ListView(
          children: [
            //Pic_Logo
            Container(
              height: 35,
              width: 120,
              margin: const EdgeInsets.only(bottom: 10),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://logodownload.org/wp-content/uploads/2015/12/tripadvisor-logo-1-1536x327.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            //Pic_login
            Container(
              height: 400,
              width: 400,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://img.freepik.com/free-vector/account-concept-illustration_114360-399.jpg?t=st=1657852694~exp=1657853294~hmac=684c3b15ff050d9083d61337845301c1647ac88a499c8c3db901416ebd777a16&w=740'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Container(
                margin: const EdgeInsets.only(bottom: 30),
                width: 450,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        margin: const EdgeInsets.only(bottom: 8),
                        child:
                            const CommonText(text: 'Phone Number', size: 14)),
                    // Form Phone Number
                    Form(
                      key: formKey,
                      child: Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: TextFormField(
                            keyboardType: TextInputType.phone,
                            validator: MultiValidator([
                              RequiredValidator(
                                  errorText: '* Phone Number is required'),
                              LengthRangeValidator(
                                  min: 10,
                                  max: 10,
                                  errorText:
                                      '* Phone Number must have 10 digits.'),
                              PatternValidator(r'0-9',
                                  errorText: '* 0-9 Only.'),
                            ]),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: '0XX-XXX-XXXX',
                              hintStyle: TextStyle(
                                  fontSize: 14, color: Colors.grey[400]),
                            ),
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[700]),
                          ),
                        ),
                      ),
                    ),
                    //
                    const SizedBox(
                      height: 10,
                    ),
                    //Get OTP
                    const CardButton(
                        text: 'Get OTP',
                        colortext: Colors.white,
                        color: Color.fromARGB(255, 37, 198, 204),
                        icon: null),
                    //
                    Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        child: const Divider()),
                    //
                    const SizedBox(
                      height: 10,
                    ),
                    //Sign in with Facebook
                    const CardButton(
                        text: 'Continue with Facebook',
                        colortext: Colors.white,
                        color: Color.fromARGB(255, 17, 39, 161),
                        icon: FontAwesomeIcons.facebook),
                    //
                    const SizedBox(
                      height: 10,
                    ),
                    //Sign in with Google
                    const CardButton(
                        text: 'Continue with Google',
                        colortext: Color.fromRGBO(97, 97, 97, 1),
                        color: Colors.white,
                        icon: FontAwesomeIcons.google),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
