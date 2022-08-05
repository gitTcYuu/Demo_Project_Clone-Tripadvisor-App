import 'package:flutter/material.dart';
import 'package:flutter_temp_1/widgets/text/text_common.dart';

class ButtonRoundedRoute extends StatelessWidget {
  final String text;
  final dynamic route;
  const ButtonRoundedRoute({Key? key, required this.text, required this.route})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          alignment: Alignment.centerLeft,
          side: const BorderSide(
            color: Colors.black87,
            width: 2,
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => route,
        ));
      },
      child: Center(child: TextCommon(data: text)),
    );
  }
}
