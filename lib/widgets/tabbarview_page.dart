import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_temp_1/model/model_trips.dart';
import 'package:flutter_temp_1/widgets/card_search.dart';

class TabbarViewPage extends StatelessWidget {
  final String search;
  final List<Trip> searchData;
  const TabbarViewPage({
    Key? key,
    required this.search,
    required this.searchData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      width: double.maxFinite,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        physics: const ScrollPhysics(parent: RangeMaintainingScrollPhysics()),
        itemCount: searchData.length,
        itemBuilder: (context, index) {
          //Search
          if (search.isNotEmpty) {
            if (searchData[index]
                    .nametour!
                    .toLowerCase()
                    .toString()
                    .contains(search.toLowerCase()) ||
                searchData[index]
                    .city!
                    .toLowerCase()
                    .toString()
                    .contains(search.toLowerCase()) ||
                searchData[index]
                    .country!
                    .toLowerCase()
                    .toString()
                    .contains(search.toLowerCase())) {
              return CardTripSearch(data: searchData, index: index);
            } else {
              log('null');
              return Container();
            }
          } else if (search.isEmpty) {
            return CardTripSearch(data: searchData, index: index);
          }

          return const Center(
            child: Text('No Result'),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 20,
          );
        },
      ),
    );
  }
}
