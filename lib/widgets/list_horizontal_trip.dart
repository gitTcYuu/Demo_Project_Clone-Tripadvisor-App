import 'package:flutter/cupertino.dart';
import 'package:flutter_temp_1/model/model_trips.dart';

class ListHorizontalTrip extends StatelessWidget {
  final List<Trip> images;
  const ListHorizontalTrip({Key? key, required this.images}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      width: double.maxFinite,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Container(
            height: 350,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: NetworkImage('${images[index].imageUrl}'),
                  fit: BoxFit.cover),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 30,
          );
        },
      ),
    );
  }
}
