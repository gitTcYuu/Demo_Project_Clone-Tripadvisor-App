import 'package:flutter/material.dart';
import 'package:flutter_temp_1/misc/app_colors_theme.dart';
import 'package:flutter_temp_1/pages/navpages/review_page.dart';
import 'package:flutter_temp_1/pages/navpages/plan_trip_page.dart';
import 'package:flutter_temp_1/pages/navpages/home_page.dart';
import 'package:flutter_temp_1/pages/navpages/search_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentPageIndex = 0;
  List<Widget> pages = [
    const HomePage(),
    const SearchPage(),
    const PlanTripPage(),
    const ReviewPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: pages[currentPageIndex],
          bottomNavigationBar: NavigationBarTheme(
            data: NavigationBarThemeData(
              indicatorColor: AppColors.secondaryColor,
              labelTextStyle: MaterialStateProperty.all(
                const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
            ),
            child: NavigationBar(
                height: 60,
                backgroundColor: Colors.white,
                selectedIndex: currentPageIndex,
                labelBehavior:
                    NavigationDestinationLabelBehavior.onlyShowSelected,
                animationDuration: const Duration(seconds: 1),
                onDestinationSelected: (value) {
                  setState(() {
                    currentPageIndex = value;
                  });
                },
                destinations: const [
                  NavDestination(icon: FontAwesomeIcons.house, text: 'สำรวจ'),
                  NavDestination(
                      icon: FontAwesomeIcons.magnifyingGlass, text: 'ค้นหา'),
                  NavDestination(icon: FontAwesomeIcons.heart, text: 'วางแผน'),
                  NavDestination(icon: FontAwesomeIcons.pencil, text: 'รีวิว'),
                ]),
          )),
    );
  }
}

class NavDestination extends StatelessWidget {
  final IconData? icon;
  final String? text;
  const NavDestination({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NavigationDestination(
        icon: Icon(
          icon,
          size: 18,
        ),
        label: '$text');
  }
}
