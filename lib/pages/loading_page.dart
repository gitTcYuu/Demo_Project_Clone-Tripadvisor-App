import 'package:flutter/material.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: SizedBox(
      height: double.maxFinite,
      width: double.maxFinite,
      child: Center(
        child: CircularProgressIndicator.adaptive(),
      ),
    ));
  }
}
