import 'package:flutter/material.dart';

class TextCommon extends StatelessWidget {
  final String? data;
  final Color? color;
  final FontWeight? weight;
  const TextCommon({Key? key, required this.data, this.color, this.weight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '$data',
      style: TextStyle(
        fontWeight: weight ?? FontWeight.normal,
        fontSize: 16,
        color: color ?? Colors.black87,
        //overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
