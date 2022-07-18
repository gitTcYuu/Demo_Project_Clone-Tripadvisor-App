import 'package:flutter/material.dart';
import 'package:flutter_temp_1/model/model_trips.dart';
import 'package:flutter_temp_1/widgets/common_text.dart';
import 'package:flutter_temp_1/widgets/large_text.dart';
import 'package:flutter_temp_1/widgets/star_trip.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailTripPage extends StatefulWidget {
  final List<Trip> data;
  final int index;
  const DetailTripPage({Key? key, required this.data, required this.index})
      : super(key: key);

  @override
  State<DetailTripPage> createState() => _DetailTripPageState();
}

class _DetailTripPageState extends State<DetailTripPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        body: ListView(
          children: [
            //Image
            Container(
              height: 300,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: NetworkImage('${widget.data[widget.index].imageUrl}'),
                fit: BoxFit.cover,
              )),
              child: Stack(
                // BackButton & ..Button
                children: [
                  Positioned(
                      top: 20,
                      left: 15,
                      right: 15,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //Icon Back
                          Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                                color: Colors.black87.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: const Icon(
                                    FontAwesomeIcons.chevronLeft,
                                    size: 20,
                                    color: Colors.white,
                                  )),
                            ),
                          ),
                          //Icon
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                FontAwesomeIcons.ellipsisVertical,
                                size: 25,
                                color: Colors.white,
                              )),
                        ],
                      )),
                ],
              ),
            ),

            //Header
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              height: 150,
              width: double.maxFinite,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Name Trip
                  SizedBox(
                    width: double.maxFinite,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //Name
                        Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            child: LargeText(
                                text: '${widget.data[widget.index].nametour}')),
                        //Owner Tour
                        CommonText(
                            text: '${widget.data[widget.index].owner}',
                            size: 14),
                      ],
                    ),
                  ),
                  //Like & Price
                  SizedBox(
                    height: 45,
                    width: double.maxFinite,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                margin: const EdgeInsets.only(right: 12),
                                width: 116,
                                child: StarTrip(
                                    like: widget.data[widget.index].like)),
                            CommonText(
                                text: '${widget.data[widget.index].like}',
                                size: 16)
                          ],
                        )),
                        Expanded(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Icon(
                              FontAwesomeIcons.dollarSign,
                              size: 20,
                            ),
                            LargeText(
                                text: '${widget.data[widget.index].price}'),
                            const LargeText(text: ' per adult'),
                          ],
                        )),
                      ],
                    ),
                  )
                ],
              ),
            ),
            //
            Divider(
              thickness: 10,
              color: Colors.grey[200],
            ),
            //
          ],
        ),
      ),
    );
  }
}
