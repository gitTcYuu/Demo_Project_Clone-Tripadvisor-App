import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_temp_1/widgets/text/text_common.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../widgets/button/button_text_signin.dart';

class TabBarTripPage extends StatefulWidget {
  const TabBarTripPage({Key? key}) : super(key: key);

  @override
  State<TabBarTripPage> createState() => _TabBarTripPageState();
}

class _TabBarTripPageState extends State<TabBarTripPage> {
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        stream: auth.userChanges(),
        builder: (context, snapshot) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            width: double.maxFinite,
            child: Column(
              children: [
                //Feature Plan
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      SizedBox(
                        height: 50,
                      ),
                      FeatureTrip(
                          icon: FontAwesomeIcons.solidHeart,
                          text:
                              'บันทึกสถานที่ท่องเที่ยวที่คุณต้องการไปเยี่ยมชม'),
                      SizedBox(
                        height: 20,
                      ),
                      FeatureTrip(
                          icon: FontAwesomeIcons.locationDot,
                          text: 'ดูบันทึกของคุณในแผนที่'),
                      SizedBox(
                        height: 20,
                      ),
                      FeatureTrip(
                          icon: FontAwesomeIcons.fileLines,
                          text: 'ติดตามโน้ต ลิงค์ และอื่นๆ อีกมากมาย'),
                      SizedBox(
                        height: 20,
                      ),
                      FeatureTrip(
                          icon: FontAwesomeIcons.userPlus,
                          text: 'แบ่งปันและร่วมมือกันสำหรับแผนของคุณ'),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                //Form Create My Trip
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  width: double.maxFinite,
                  child: const FormCreateMyTrip(),
                ),
                //User Sign in
                snapshot.hasData
                    ? Container()
                    : const ButtonTextSignIn(
                        text: 'เข้าสู่ระบบเพื่อเข้าถึงทริปของคุณ'),
              ],
            ),
          );
        });
  }
}

class FeatureTrip extends StatelessWidget {
  final IconData? icon;
  final String? text;
  const FeatureTrip({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Icon
        Container(
          height: 36,
          width: 36,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: const Color(0xFF10561F)),
          child: Center(
            child: Icon(icon, size: 16, color: Colors.white),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        //Text
        Expanded(
          child: TextCommon(data: text),
        )
      ],
    );
  }
}

class FormCreateMyTrip extends StatefulWidget {
  const FormCreateMyTrip({Key? key}) : super(key: key);

  @override
  State<FormCreateMyTrip> createState() => _FormCreateMyTripState();
}

class _FormCreateMyTripState extends State<FormCreateMyTrip> {
  TextEditingController tedNameTrip = TextEditingController();
  String? nameTrip = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'ชื่อทริป',
          style: TextStyle(fontSize: 14, color: Colors.black87),
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          height: 45,
          child: TextField(
            controller: tedNameTrip,
            keyboardType: TextInputType.name,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'เช่น : สุดสัปดาห์ในนิวยอร์กซิตี้',
              hintStyle: TextStyle(fontSize: 14),
            ),
            style: const TextStyle(fontSize: 14),
            onChanged: ((value) {
              setState(() {
                nameTrip = value;
              });
            }),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        nameTrip!.isEmpty
            ? ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(double.maxFinite, 60),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                ),
                onPressed: null,
                child: const TextCommon(
                  data: 'สร้างทริป',
                  color: Colors.white,
                ))
            : ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(double.maxFinite, 60),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                ),
                onPressed: () {},
                child: const TextCommon(
                  data: 'สร้างทริป',
                  color: Colors.white,
                )),
      ],
    );
  }
}
