import 'package:flutter/material.dart';
import 'package:flutter_temp_1/widgets/text/text_common.dart';
import 'package:flutter_temp_1/widgets/text/text_header.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../widgets/list/list_chips.dart';
import '../../widgets/list/list_nexttrip.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.only(top: 15),
        width: double.maxFinite,
        color: Colors.white,
        child: ListView(
          children: [
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(
                    height: 175,
                    width: double.maxFinite,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //User Image
                        Container(
                          padding: const EdgeInsets.only(right: 20),
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                FontAwesomeIcons.solidCircleUser,
                                size: 45,
                                color: Colors.grey[700],
                              )
                              /* Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[400],
                                    borderRadius: BorderRadius.circular(25),
                                    image: const DecorationImage(image: NetworkImage('ImageUser'),fit: BoxFit.cover),
                                  ),
                                ), */
                            ],
                          ),
                        ),
                        //
                        Container(
                          padding: const EdgeInsets.only(left: 20),
                          width: double.maxFinite,
                          child: const TextHeader(data: 'สำรวจ'),
                        ),
                        //List Chips
                        const Expanded(child: ListChips()),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //Image
            Container(
              height: 250,
              width: double.maxFinite,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: NetworkImage(
                    'https://static.tacdn.com/img2/brand/home/homemar2022_dt_trans.webp'),
                fit: BoxFit.fitHeight,
                alignment: Alignment.centerLeft,
              )),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              width: double.maxFinite,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 5),
                          width: double.maxFinite,
                          child: const Text(
                            'วางแผนการพักผ่อนครั้งต่อไปของคุณ',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          width: double.maxFinite,
                          child: const TextCommon(
                              data: 'จุดให้สำรวจที่เหมาะสำหรับครอบครัว'),
                        ),
                      ],
                    ),
                  ),
                  //
                  const SizedBox(
                    height: 250,
                    width: double.maxFinite,
                    child: ListNextTrips(),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
