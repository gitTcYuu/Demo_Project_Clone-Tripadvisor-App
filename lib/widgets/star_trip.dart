import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StarTrip extends StatefulWidget {
  final double like;
  const StarTrip({Key? key, required this.like}) : super(key: key);

  @override
  State<StarTrip> createState() => _StarTripState();
}

class _StarTripState extends State<StarTrip> {
  List star = <Widget>[];
  double resStar = 0;

  @override
  void initState() {
    resStar = widget.like;

    for (var i = 0; i < 5; i++) {
      if (resStar >= 1) {
        star.add(const Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellow,
          size: 20,
        ));
        resStar--;
      } else if (resStar > 0.5) {
        star.add(const Icon(
          FontAwesomeIcons.starHalfStroke,
          color: Colors.yellow,
          size: 20,
        ));
        resStar = resStar - resStar;
      } else if (resStar >= 0) {
        star.add(const Icon(
          FontAwesomeIcons.star,
          color: Colors.yellow,
          size: 20,
        ));
        resStar = resStar - resStar;
      }
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: star.length,
      itemBuilder: (context, index) {
        return star[index];
      },
      separatorBuilder: (context, index) {
        return const SizedBox(
          width: 4,
        );
      },
    );
  }
}
