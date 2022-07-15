import 'package:flutter/material.dart';
import 'package:flutter_temp_1/widgets/common_text.dart';
import 'package:flutter_temp_1/widgets/icon_inapp.dart';
import 'package:flutter_temp_1/widgets/icon_menu.dart';
import 'package:flutter_temp_1/widgets/large_text.dart';
import 'package:flutter_temp_1/widgets/list_card_city.dart';
import 'package:flutter_temp_1/widgets/list_horizontal_trip.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_temp_1/model/model_trips.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Trip> datalistCity = [];
  List<Trip> datalistThingToDo = [];

  @override
  void initState() {
    for (var i = 0; i < listCity.length; i++) {
      datalistCity.add(listCity[i]);
    }
    for (var i = 0; i < listThingToDo.length; i++) {
      datalistThingToDo.add(listThingToDo[i]);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Container(
        padding: const EdgeInsets.only(top: 30),
        color: Colors.white,
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 30),
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // User
                  Container(
                    height: 65,
                    width: 65,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.grey,
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://images.unsplash.com/photo-1500259783852-0ca9ce8a64dc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjF8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  //Icon
                  SizedBox(
                    height: 65,
                    width: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const IconInApp(
                                icon: Icons.bookmark_outline_rounded)),
                        IconButton(
                            onPressed: () {},
                            icon: const IconInApp(icon: Icons.notifications)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Top Travel Experiences on Tripadvisor
            Container(
              margin: const EdgeInsets.only(bottom: 30),
              padding: const EdgeInsets.only(left: 30),
              height: 425,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //LargeText
                  Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    child: Row(
                      children: [
                        const LargeText(text: 'Top Travel by  '),
                        Container(
                          height: 45,
                          width: 150,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://logodownload.org/wp-content/uploads/2015/12/tripadvisor-logo-1-1536x327.png'),
                                fit: BoxFit.contain),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //List Trip
                  ListHorizontalTrip(images: datalistThingToDo),
                ],
              ),
            ),
            Divider(
              thickness: 10,
              color: Colors.grey[200],
            ),
            //Prepare Your trip
            SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  //LargeText
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        LargeText(text: 'Prepare Your Trip'),
                      ],
                    ),
                  ),
                  //IconMenu
                  Container(
                    width: double.maxFinite,
                    padding: const EdgeInsets.symmetric(vertical: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        IconMenu(
                            text: 'Hotel',
                            icon: FontAwesomeIcons.hotel,
                            color: Color.fromARGB(255, 244, 3, 204),
                            route: null),
                        IconMenu(
                            text: 'Food',
                            icon: FontAwesomeIcons.utensils,
                            color: Color.fromARGB(255, 244, 148, 3),
                            route: null),
                        IconMenu(
                            text: 'Things to do',
                            icon: FontAwesomeIcons.campground,
                            color: Color.fromARGB(255, 244, 228, 3),
                            route: null),
                        IconMenu(
                            text: 'Traveling',
                            icon: FontAwesomeIcons.bus,
                            color: Color.fromARGB(255, 3, 216, 244),
                            route: null),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 10,
              color: Colors.grey[200],
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 30),
            ),
            //Popular destination for your next vacation.
            Container(
              padding: const EdgeInsets.only(left: 30),
              //height: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //LargeText
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            LargeText(text: 'Popular Destination'),
                            SizedBox(
                              height: 5,
                            ),
                            CommonText(
                              text: ' For your next vacation',
                              size: 12,
                            )
                          ],
                        ),
                        //CommonText
                        Container(
                            padding: const EdgeInsets.only(right: 30),
                            child: const CommonText(text: 'more', size: 14))
                      ],
                    ),
                  ),
                  //List Vacation
                  ListCardCity(images: datalistCity),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
