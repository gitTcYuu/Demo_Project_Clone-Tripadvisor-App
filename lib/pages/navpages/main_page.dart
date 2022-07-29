import 'package:flutter/material.dart';
import 'package:flutter_temp_1/misc/app_colors_theme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'explore_page.dart';
import 'plan_trip_page.dart';
import 'review_page.dart';
import 'search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  List<Widget> pages = [
    const ExplorePage(),
    const SearchPage(),
    const PlanTripPage(),
    const ReviewPage(),
  ];
  List<Widget> navDestination = [
    const NavDestination(icon: FontAwesomeIcons.house, label: 'สำรวจ'),
    const NavDestination(
        icon: FontAwesomeIcons.magnifyingGlass, label: 'ค้นหา'),
    const NavDestination(icon: FontAwesomeIcons.heart, label: 'วางแผน'),
    const NavDestination(icon: FontAwesomeIcons.pencil, label: 'รีวิว'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      extendBody: true,
      body: pages[currentIndex],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: AppColors.secondaryColor,
          labelTextStyle: MaterialStateProperty.all(
            const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
        ),
        child: NavigationBar(
          backgroundColor: Colors.white,
          selectedIndex: currentIndex,
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          animationDuration: const Duration(seconds: 1),
          onDestinationSelected: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          destinations: navDestination,
        ),
      ),
    ));
  }
}

class NavDestination extends StatelessWidget {
  final IconData? icon;
  final String? label;
  const NavDestination({Key? key, required this.icon, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NavigationDestination(
      icon: Icon(
        icon,
        size: 18,
      ),
      label: '$label',
      selectedIcon: Icon(
        icon,
        size: 18,
        color: Colors.white,
      ),
    );
  }
}
