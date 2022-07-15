import 'package:flutter/material.dart';
import 'package:flutter_temp_1/widgets/tabbarview_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../model/model_trips.dart';

class TabBarViewTrips extends StatefulWidget {
  final String search;
  const TabBarViewTrips({Key? key, required this.search}) : super(key: key);

  @override
  State<TabBarViewTrips> createState() => _TabBarViewTripsState();
}

class _TabBarViewTripsState extends State<TabBarViewTrips> {
  int tapIndex = 0;
  List<Trip> dataListSearchCity = [];
  List<Trip> dataListSearchTTD = [];

  @override
  void initState() {
    //GetData
    for (var i = 0; i < listCity.length; i++) {
      dataListSearchCity.add(listCity[i]);
    }
    for (var i = 0; i < listThingToDo.length; i++) {
      dataListSearchTTD.add(listThingToDo[i]);
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: tapIndex,
      length: 2,
      child: Column(
        children: [
          //Tab Bar
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            width: double.maxFinite,
            child: TabBar(
              indicatorColor: Colors.amber,
              splashBorderRadius: BorderRadius.circular(20),
              tabs: [
                //Tab 1
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  child: tapIndex == 0
                      ? const Icon(
                          FontAwesomeIcons.mountainCity,
                          color: Colors.amber,
                        )
                      : Icon(
                          FontAwesomeIcons.mountainCity,
                          color: Colors.grey.withOpacity(0.5),
                        ),
                ),
                //Tab 2
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  child: tapIndex == 1
                      ? const Icon(
                          FontAwesomeIcons.binoculars,
                          color: Colors.amber,
                        )
                      : Icon(
                          FontAwesomeIcons.binoculars,
                          color: Colors.grey.withOpacity(0.5),
                        ),
                ),
              ],
              onTap: (int index) {
                setState(() {
                  tapIndex = index;
                });
              },
            ),
          ),
          // Page View
          Container(
            padding: const EdgeInsets.only(left: 30),
            height: 220 * 5,
            child: TabBarView(children: [
              TabbarViewPage(
                search: widget.search,
                searchData: dataListSearchCity,
              ),
              TabbarViewPage(
                search: widget.search,
                searchData: dataListSearchTTD,
              ),
            ]),
          ),
          //
        ],
      ),
    );
  }
}
