import 'package:flutter/material.dart';

class TextInCard extends StatelessWidget {
  final String? text;
  const TextInCard({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '$text',
      style: const TextStyle(
          fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
      overflow: TextOverflow.ellipsis,
    );
  }
}
