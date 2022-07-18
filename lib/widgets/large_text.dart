import 'package:flutter/material.dart';

class LargeText extends StatelessWidget {
  final String text;
  const LargeText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black87),
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
    );
  }
}
