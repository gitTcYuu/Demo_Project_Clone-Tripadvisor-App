import 'package:flutter/material.dart';

class TextCommon extends StatelessWidget {
  final String? data;
  final Color? color;
  final FontWeight? weight;
  final double? size;
  const TextCommon(
      {Key? key, required this.data, this.color, this.weight, this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '$data',
      style: TextStyle(
        fontWeight: weight ?? FontWeight.normal,
        fontSize: size ?? 16,
        color: color ?? Colors.black87,
        //overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
