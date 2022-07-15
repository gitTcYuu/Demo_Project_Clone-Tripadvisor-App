import 'package:flutter/material.dart';

class CardButton extends StatelessWidget {
  final String text;
  final Color colortext;
  final Color color;
  final IconData? icon;
  const CardButton(
      {Key? key,
      required this.text,
      required this.colortext,
      required this.color,
      this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: SizedBox(
        height: 50,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon != null
                ? Container(
                    margin: const EdgeInsets.only(right: 10),
                    child: Icon(
                      icon,
                      color: colortext,
                    ),
                  )
                : Container(),
            Text(
              text,
              style: TextStyle(
                  fontSize: 14, fontWeight: FontWeight.bold, color: colortext),
            ),
          ],
        ),
      ),
    );
  }
}
