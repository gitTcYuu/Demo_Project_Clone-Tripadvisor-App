import 'package:flutter/material.dart';
import 'package:flutter_temp_1/widgets/text/text_common.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../widgets/text/text_header.dart';

class ReviewPage extends StatefulWidget {
  const ReviewPage({Key? key}) : super(key: key);

  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SizedBox(
        child: ListView(
          children: [
            //
            Container(
              margin: const EdgeInsets.symmetric(vertical: 15),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              width: double.maxFinite,
              child: const TextHeader(data: 'รีวิว'),
            ),
            //
            Container(
              margin: const EdgeInsets.symmetric(vertical: 25),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              width: double.maxFinite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: const EdgeInsets.only(bottom: 2),
                      child: const TextCommon(
                        data: 'No reviews yet',
                        weight: FontWeight.bold,
                      )),
                  Container(
                      margin: const EdgeInsets.only(bottom: 2),
                      child: const TextCommon(
                        data: 'คุณยังไม่ได้เขียนรีวิวใดๆ เริ่มต้นเลย!',
                        color: Colors.black54,
                      )),
                  //
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    height: 45,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //
                        Expanded(
                            child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                    fixedSize: const Size.fromHeight(45),
                                    side: const BorderSide(
                                        color: Colors.black87, width: 2),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30))),
                                onPressed: () {},
                                child: const TextCommon(
                                  data: 'เขียนรีวิว',
                                ))),
                        //
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                    fixedSize: const Size.fromHeight(45),
                                    side: const BorderSide(
                                        color: Colors.black87, width: 2),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30))),
                                onPressed: () {},
                                child: const TextCommon(
                                  data: 'อัพโหลดภาพถ่าย',
                                ))),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //
            Container(
              margin: const EdgeInsets.only(bottom: 30),
              height: 500,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: const NetworkImage(
                          'https://images.unsplash.com/photo-1522074174872-74def8b1d699?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c3RvbmUlMjBoZW5nZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.5), BlendMode.darken))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  //
                  Container(
                    margin: const EdgeInsets.only(bottom: 15),
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    width: double.maxFinite,
                    child: const Text(
                      'เราอยากให้คุณเขียนรีวิวถึงเรา',
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  //
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    width: double.maxFinite,
                    child: const TextCommon(
                        data:
                            'เราจะหันมาขอคำแนะนำด้านการท่องเที่ยวจากใครได้อีกล่ะ',
                        color: Colors.white),
                  ),
                  //
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 25),
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            fixedSize: const Size(120, 45),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30))),
                        onPressed: () {},
                        child: const TextCommon(data: 'สิ่งที่ควรรู้')),
                  ),
                ],
              ),
            ),
            //
            Container(
              margin: const EdgeInsets.only(top: 25, bottom: 60),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              width: double.maxFinite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 2),
                    child: RichText(
                        text: const TextSpan(
                            text: 'Tripadvisor',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87),
                            children: [
                          TextSpan(
                              text: ' ยังขาดสถานที่ใดไปหรือไม่',
                              style: TextStyle(fontWeight: FontWeight.normal))
                        ])),
                  ),
                  Container(
                      margin: const EdgeInsets.only(bottom: 2),
                      child: const TextCommon(
                        data:
                            'บอกให้เรารู้เกี่ยวกับสิ่งเหล่านั้นเพื่อให้เราสามารถปรับปรุง',
                        color: Colors.black54,
                      )),
                  Container(
                      margin: const EdgeInsets.only(bottom: 2),
                      child: const TextCommon(
                        data: 'สิ่งที่เราแสดงได้',
                        color: Colors.black54,
                      )),
                  //
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    height: 45,
                    width: double.maxFinite,
                    child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            fixedSize: const Size.fromHeight(45),
                            side: const BorderSide(
                                color: Colors.black87, width: 2),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30))),
                        onPressed: () {},
                        child: const TextCommon(
                          data: 'เพิ่มสถานที่ให้บริการ',
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 3,
        backgroundColor: Colors.white,
        onPressed: () {},
        child: const Icon(
          FontAwesomeIcons.plus,
          size: 20,
          color: Colors.black87,
        ),
      ),
    ));
  }
}
