import 'package:flutter/material.dart';

class IconInApp extends StatelessWidget {
  final IconData icon;
  const IconInApp({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: const Color(0xFF6D6D6D),
      size: 30,
    );
  }
}
