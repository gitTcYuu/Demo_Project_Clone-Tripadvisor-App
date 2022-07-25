import 'package:flutter/material.dart';

class TextHeader extends StatelessWidget {
  final String? data;
  final Color? color;
  const TextHeader({Key? key, required this.data, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '$data',
      style: TextStyle(
        fontSize: 28,
        color: color ?? Colors.black87,
        fontWeight: FontWeight.bold,
        overflow: TextOverflow.ellipsis,
      ),
      maxLines: 2,
    );
  }
}
