import 'package:flutter/material.dart';

class CircleImageUser extends StatelessWidget {
  final String? imageUrl;
  final dynamic route;
  const CircleImageUser({Key? key, this.imageUrl, this.route})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.of(context, rootNavigator: true).push(MaterialPageRoute(
            builder: (context) => route,
          ));
        },
        child: Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              image: DecorationImage(
                  image: imageUrl != null
                      ? NetworkImage('$imageUrl')
                      : const NetworkImage(
                          'https://img.icons8.com/fluency/344/user-male-circle.png'),
                  fit: BoxFit.cover)),
        ));
  }
}
