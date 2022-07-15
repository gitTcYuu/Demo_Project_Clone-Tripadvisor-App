import 'package:flutter/material.dart';
import 'package:flutter_temp_1/model/model_trips.dart';
import 'package:flutter_temp_1/widgets/large_text.dart';

class ListCardCity extends StatelessWidget {
  final List<Trip> images;
  const ListCardCity({Key? key, required this.images}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: double.maxFinite,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Column(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //CountryImage
              Container(
                margin: const EdgeInsets.only(bottom: 5),
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: NetworkImage('${images[index].imageUrl}'),
                      fit: BoxFit.cover),
                ),
              ),
              //LargeText
              const Divider(
                color: Colors.transparent,
              ),
              SizedBox(
                width: 200,
                child: LargeText(
                    text: '${images[index].city}, ${images[index].country}'),
              ),
            ],
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
