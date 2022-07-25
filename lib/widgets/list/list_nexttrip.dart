import 'package:flutter/material.dart';
import 'package:flutter_temp_1/model/model_trips.dart';
import 'package:flutter_temp_1/widgets/list/card_trip.dart';

class ListNextTrips extends StatefulWidget {
  const ListNextTrips({Key? key}) : super(key: key);

  @override
  State<ListNextTrips> createState() => _ListNextTripsState();
}

class _ListNextTripsState extends State<ListNextTrips> {
  List<City> listcity = [];
  @override
  void initState() {
    for (var i = 0; i < city.length; i++) {
      listcity.add(city[i]);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: listcity.length,
      itemBuilder: (context, index) {
        return BuildCard(data: listcity, index: index);
      },
      separatorBuilder: (context, index) {
        return const SizedBox(
          width: 15,
        );
      },
    );
  }
}

class BuildCard extends StatelessWidget {
  final List<City> data;
  final int index;
  const BuildCard({Key? key, required this.data, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (index == 0) {
      return Container(
        margin: const EdgeInsets.only(left: 20),
        child: CardTrip(
          imageUrl: data[index].imageUrl,
          city: data[index].city,
        ),
      );
    }
    if (index == 3) {
      return Container(
        margin: const EdgeInsets.only(right: 20),
        child: CardTrip(
          imageUrl: data[index].imageUrl,
          city: data[index].city,
        ),
      );
    }
    return CardTrip(
      imageUrl: data[index].imageUrl,
      city: data[index].city,
    );
  }
}
