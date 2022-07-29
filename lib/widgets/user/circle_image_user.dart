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
              color: Colors.grey,
              borderRadius: BorderRadius.circular(25),
              image: DecorationImage(
                  image: imageUrl != null
                      ? NetworkImage('$imageUrl')
                      : const NetworkImage(
                          'https://images.unsplash.com/photo-1420593248178-d88870618ca0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8bmF0dXJhbHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
                  fit: BoxFit.cover)),
        ));
  }
}
