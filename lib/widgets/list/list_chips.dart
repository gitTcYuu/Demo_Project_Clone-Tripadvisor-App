import 'package:flutter/material.dart';
import 'package:flutter_temp_1/widgets/text/text_common.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ListChips extends StatelessWidget {
  const ListChips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List chips = [
      const SizedBox(width: 20),
      const BuildChips(icon: FontAwesomeIcons.bed, text: 'โรงแรม'),
      const SizedBox(width: 10),
      const BuildChips(icon: FontAwesomeIcons.ticket, text: 'กิจกรรมน่าสนใจ'),
      const SizedBox(width: 10),
      const BuildChips(icon: FontAwesomeIcons.utensils, text: 'ร้านอาหาร'),
      const SizedBox(width: 20),
    ];

    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: chips.length,
        itemBuilder: ((context, index) {
          return chips[index];
        }));
  }
}

class BuildChips extends StatelessWidget {
  final IconData? icon;
  final String? text;
  const BuildChips({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
      elevation: 3,
      backgroundColor: Colors.white,
      avatar: Icon(
        icon,
        color: Colors.grey[700],
      ),
      label: TextCommon(
        data: text,
        color: Colors.grey[700],
      ),
      labelPadding: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(15),
    );
  }
}
