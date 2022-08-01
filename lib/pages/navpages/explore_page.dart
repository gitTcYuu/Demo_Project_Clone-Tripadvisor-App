import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_temp_1/widgets/user/circle_image_user.dart';

import '../../widgets/list/list_chips.dart';
import '../../widgets/list/list_nexttrip.dart';
import '../../widgets/text/text_common.dart';
import '../../widgets/text/text_header.dart';
import '../profile_user/user_main_page.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        stream: auth.userChanges(),
        builder: (context, snapshot) {
          return SafeArea(
            child: Container(
              width: double.maxFinite,
              color: Colors.white,
              child: ListView(
                children: [
                  Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 210,
                          width: double.maxFinite,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //User Image
                              Container(
                                margin:
                                    const EdgeInsets.only(top: 20, bottom: 10),
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                width: double.maxFinite,
                                child: Align(
                                    alignment: Alignment.centerRight,
                                    child: CircleImageUser(
                                      imageUrl: snapshot.hasData
                                          ? snapshot.data?.photoURL
                                          : null,
                                      route: const UserMainPage(),
                                    )),
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
        });
  }
}
