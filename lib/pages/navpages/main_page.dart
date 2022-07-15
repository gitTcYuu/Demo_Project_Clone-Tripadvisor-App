import 'package:flutter/material.dart';
import 'package:flutter_temp_1/misc/app_colors_theme.dart';
import 'package:flutter_temp_1/pages/navpages/book_trip_page.dart';
import 'package:flutter_temp_1/pages/navpages/home_page.dart';
import 'package:flutter_temp_1/pages/navpages/search_page.dart';
import 'package:flutter_temp_1/pages/navpages/user_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 1;
  List page = [
    const HomePage(),
    const SearchPage(),
    const BookTripPage(),
    const UserPage(),
  ];

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: page[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          iconSize: 20,
          currentIndex: currentIndex,
          onTap: onTap,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: AppColors.primaryColor,
          unselectedItemColor: Colors.grey.withOpacity(0.7),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.house), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.mapLocationDot),
                label: 'Search Trips'),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.bookmark), label: 'Booking'),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.solidUser), label: 'User'),
          ],
        ),
      ),
    );
  }
}
