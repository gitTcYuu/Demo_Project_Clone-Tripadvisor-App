import 'package:flutter/material.dart';
import 'package:flutter_temp_1/pages/tabbarplanpage/tabbar_save.dart';
import 'package:flutter_temp_1/pages/tabbarplanpage/tabbar_trip.dart';
import 'package:flutter_temp_1/widgets/text/text_common.dart';
import '../../widgets/text/text_header.dart';
import '../tabbarplanpage/tabbar_booking.dart';

class PlanTripPage extends StatefulWidget {
  const PlanTripPage({Key? key}) : super(key: key);

  @override
  State<PlanTripPage> createState() => _PlanTripPageState();
}

class _PlanTripPageState extends State<PlanTripPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 15, left: 15, bottom: 15),
            child: const TextHeader(
              data: 'วางแผน',
            ),
          ),
          SizedBox(
            height: 1000,
            width: double.maxFinite,
            child: DefaultTabController(
              length: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  //TabBar
                  SizedBox(
                    height: 50,
                    child: TabBar(
                        isScrollable: true,
                        indicatorSize: TabBarIndicatorSize.label,
                        tabs: [
                          //Tab1
                          TextCommon(data: 'ทริป'),
                          //Tab2
                          TextCommon(data: 'บันทึก'),
                          //Tab3
                          TextCommon(data: 'การจอง'),
                        ]),
                  ),
                  //TabBarView
                  Expanded(
                    child: TabBarView(children: [
                      TabBarTripPage(),
                      TabBarSavePage(),
                      TabBarBookingPage()
                    ]),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
