import 'package:flutter/material.dart';
import 'package:flutter_temp_1/model/model_trips.dart';

import '../pages/detail_trip_page.dart';
import 'common_text.dart';
import 'large_text.dart';

class CardTripSearch extends StatelessWidget {
  final List<Trip> data;
  final int index;
  const CardTripSearch({Key? key, required this.data, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //Trip
        if (data[index].type == 'tour') {
          Navigator.push(context, MaterialPageRoute(builder: ((context) {
            return DetailTripPage(
              data: data,
              index: index,
            );
          })));
        }
        //City
        else if (data[index].type == 'country') {
          Navigator.push(context, MaterialPageRoute(builder: ((context) {
            return Scaffold(
              appBar: AppBar(
                title: Text('${data[index].nametour}'),
              ),
              body: Container(),
            );
          })));
        }
      },
      child: SizedBox(
        height: 200,
        child: Row(
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: NetworkImage('${data[index].imageUrl}'),
                    fit: BoxFit.cover,
                  )),
            ),
            Expanded(
                child: Container(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LargeText(text: '${data[index].nametour}'),
                  const SizedBox(
                    height: 5,
                  ),
                  CommonText(text: '${data[index].country}', size: 14),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
