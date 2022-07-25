import 'package:flutter/material.dart';
import 'package:flutter_temp_1/misc/app_colors_theme.dart';
import 'package:flutter_temp_1/pages/navpages/review_page.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
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
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  List<Widget> pages = [
    const HomePage(),
    const SearchPage(),
    const PlanTripPage(),
    const ReviewPage(),
  ];
  List<PersistentBottomNavBarItem> navBarItems = [
    PersistentBottomNavBarItem(
      icon: const Icon(FontAwesomeIcons.house),
      iconSize: 20,
      title: 'สำรวจ',
      activeColorPrimary: AppColors.secondaryColor,
      activeColorSecondary: AppColors.primaryColor,
      inactiveColorPrimary: Colors.grey[300],
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(FontAwesomeIcons.magnifyingGlass),
      iconSize: 20,
      title: 'ค้นหา',
      activeColorPrimary: AppColors.secondaryColor,
      activeColorSecondary: AppColors.primaryColor,
      inactiveColorPrimary: Colors.grey[300],
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(FontAwesomeIcons.heart),
      iconSize: 20,
      title: 'วางแผน',
      activeColorPrimary: AppColors.secondaryColor,
      activeColorSecondary: AppColors.primaryColor,
      inactiveColorPrimary: Colors.grey[300],
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(FontAwesomeIcons.pencil),
      iconSize: 20,
      title: 'รีวิว',
      activeColorPrimary: AppColors.secondaryColor,
      activeColorSecondary: AppColors.primaryColor,
      inactiveColorPrimary: Colors.grey[300],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SafeArea(
        child: PersistentTabView(
          context,
          controller: _controller,
          screens: pages,
          items: navBarItems,
          confineInSafeArea: true,
          navBarStyle: NavBarStyle.style3,
          popAllScreensOnTapOfSelectedTab: true,
          popActionScreens: PopActionScreensType.all,
        ),
      ),
    );
  }
}
