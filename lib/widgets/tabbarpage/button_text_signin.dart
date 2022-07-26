import 'package:flutter/material.dart';
import '../../pages/signin_page.dart';
import '../text/text_common.dart';

class ButtonTextSignIn extends StatelessWidget {
  final String? text;
  const ButtonTextSignIn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: double.maxFinite,
      child: Center(
          child: TextButton(
              style: TextButton.styleFrom(
                  textStyle:
                      const TextStyle(decoration: TextDecoration.underline)),
              onPressed: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (context) {
                    return const SigninPage();
                  },
                );
              },
              child: TextCommon(data: text))),
    );
  }
}
