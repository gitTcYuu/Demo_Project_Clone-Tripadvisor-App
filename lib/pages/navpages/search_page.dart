import 'package:flutter/material.dart';
import 'package:flutter_temp_1/widgets/text/text_common.dart';
import 'package:flutter_temp_1/widgets/text/text_header.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/list/grid_trip.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController tedSearch = TextEditingController();
  String textSearch = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView(
      children: [
        //
        Container(
          margin: const EdgeInsets.symmetric(vertical: 15),
          padding: const EdgeInsets.symmetric(horizontal: 15),
          width: double.maxFinite,
          child: const TextHeader(data: 'ค้นหา'),
        ),
        //
        Container(
          margin: const EdgeInsets.only(top: 5, bottom: 15),
          padding: const EdgeInsets.symmetric(horizontal: 15),
          height: 50,
          width: double.maxFinite,
          child: TextField(
            controller: tedSearch,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              prefixIcon: Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 20,
                color: Colors.grey[700],
              ),
              border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              hintText: 'ไปไหนดี',
              hintStyle: const TextStyle(fontSize: 16),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            ),
            style: const TextStyle(fontSize: 14),
            onChanged: ((value) {
              setState(() {
                textSearch = value;
              });
            }),
          ),
        ),

        //
        Container(
          margin: const EdgeInsets.fromLTRB(15, 5, 15, 20),
          color: const Color(0xFF10561F),
          height: 200,
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                  ),
                  child: Column(
                    children: const [
                      Center(
                        child: TextHeader(
                          data: 'ดูสถานที่ดีๆ บริเวณใกล้',
                          color: Colors.white,
                        ),
                      ),
                      Center(
                        child: TextHeader(
                          data: 'เคียง',
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )),
              Container(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          fixedSize: const Size.fromHeight(45),
                          side: const BorderSide(color: Colors.white, width: 2),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                      onPressed: () {},
                      child: const TextCommon(
                        data: 'เปิดการตั้งค่าตำแหน่งที่ตั้ง',
                        color: Colors.white,
                      ))),
            ],
          ),
        ),

        //
        Container(
          margin: const EdgeInsets.only(bottom: 10),
          padding: const EdgeInsets.symmetric(horizontal: 15),
          width: double.maxFinite,
          child: const Text(
            'จุดหมายปลายทางที่นักท่องเที่ยวชื่นชอบ',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black87,
            ),
          ),
        ),

        //GridView
        Container(
          margin: const EdgeInsets.only(bottom: 20),
          padding: const EdgeInsets.symmetric(horizontal: 15),
          width: double.maxFinite,
          height: 400,
          child: const GridViewTrip(),
        )
      ],
    ));
  }
}
