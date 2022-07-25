import 'package:flutter/material.dart';
import 'package:flutter_temp_1/model/model_trips.dart';
import 'package:flutter_temp_1/widgets/list/card_trip.dart';

class GridViewTrip extends StatefulWidget {
  const GridViewTrip({Key? key}) : super(key: key);

  @override
  State<GridViewTrip> createState() => _GridViewTripState();
}

class _GridViewTripState extends State<GridViewTrip> {
  List<City> listLikeTrip = [];

  @override
  void initState() {
    for (var i = 0; i < LikeTrip.length; i++) {
      listLikeTrip.add(LikeTrip[i]);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: listLikeTrip.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount:
            MediaQuery.of(context).orientation == Orientation.landscape ? 3 : 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      itemBuilder: (context, index) {
        return CardTrip(
          imageUrl: listLikeTrip[index].imageUrl,
          city: listLikeTrip[index].city,
        );
      },
    );
  }
}
