import 'package:flutter/cupertino.dart';
import 'package:flutter_temp_1/misc/app_colors_theme.dart';

class CommonText extends StatelessWidget {
  final String text;
  final double size;
  const CommonText({Key? key, required this.text, required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: size,
          color: AppColors.textColor2,
          fontWeight: FontWeight.bold),
    );
  }
}
