import 'package:flutter/material.dart';
import 'package:flutter_temp_1/model/model_trips.dart';
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
    return Scaffold(
      extendBody: true,
      body: SafeArea(
        child: Stack(
          children: [
            //Image
            Positioned(
                left: 0,
                right: 0,
                child: Container(
                  height: 300,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image:
                        NetworkImage('${widget.data[widget.index].imageUrl}'),
                    fit: BoxFit.cover,
                  )),
                )),
            //Content
            Positioned(
                top: 270,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                      height: 100,
                      width: double.maxFinite,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                      ),
                    ),
                    Divider(
                      thickness: 10,
                      color: Colors.grey[200],
                    ),
                    Container(
                      color: Colors.white,
                      height: 200,
                      width: double.maxFinite,
                    ),
                    Divider(
                      thickness: 10,
                      color: Colors.grey[200],
                    ),
                  ],
                )),
            // Top Bar
            Positioned(
                top: 20,
                left: 15,
                right: 15,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Icon Back
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          FontAwesomeIcons.arrowLeft,
                          size: 25,
                          color: Colors.white,
                        )),
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
    );
  }
}
