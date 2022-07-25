import 'package:flutter/material.dart';
import 'package:flutter_temp_1/widgets/text/text_card.dart';

class CardTrip extends StatelessWidget {
  final String? imageUrl;
  final String? city;
  const CardTrip({Key? key, required this.imageUrl, required this.city})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 250,
        width: 250,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage('$imageUrl'), fit: BoxFit.cover)),
        child: Stack(
          children: [
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 250,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: const [
                          0,
                          0.75,
                          0.85,
                        ],
                        colors: [
                          (const Color(0xFF000000).withOpacity(0)),
                          (const Color(0xFF000000).withOpacity(0.2)),
                          (const Color(0xFF000000).withOpacity(0.7)),
                        ]),
                  ),
                )),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(10),
                  child: TextInCard(text: '$city'),
                )),
          ],
        ));
  }
}
