import 'package:flutter/material.dart';
import 'package:flutter_temp_1/widgets/text/text_common.dart';

class ErrorPage extends StatelessWidget {
  final String? errortext;
  const ErrorPage({Key? key, required this.errortext}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      height: double.maxFinite,
      width: double.maxFinite,
      child: Center(
        child: TextCommon(data: errortext),
      ),
    ));
  }
}
