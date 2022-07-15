import 'package:flutter/material.dart';
import 'package:flutter_temp_1/widgets/common_text.dart';

class IconMenu extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color color;
  final dynamic route;
  const IconMenu(
      {Key? key,
      required this.text,
      required this.icon,
      required this.color,
      required this.route})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //IconButton
        Container(
          height: 55,
          width: 55,
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => route,
                      ));
                },
                color: color.withOpacity(0.5),
                icon: Icon(icon),
                iconSize: 25),
          ),
        ),
        //CommonText
        const SizedBox(
          height: 15,
        ),
        CommonText(text: text, size: 14),
      ],
    );
  }
}
