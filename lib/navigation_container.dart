import 'package:flutter/material.dart';
import 'package:instagram_ui/pages/explore_page.dart';
import 'package:instagram_ui/pages/home_page.dart';
import 'package:instagram_ui/pages/profile_page.dart';
import 'package:instagram_ui/pages/reels_page.dart';
import 'package:instagram_ui/pages/shop_page.dart';
import 'package:instagram_ui/widgets/custom_buttom_nav_bar.dart';

class NavigationContainer extends StatefulWidget {
  const NavigationContainer({Key? key}) : super(key: key);

  @override
  State<NavigationContainer> createState() => _NavigationContainerState();
}

class _NavigationContainerState extends State<NavigationContainer> {
  int _selectedPageIndex = 0;
  static const List<Widget> _appPages = [
    HomePage(),
    ExplorePage(),
    ReelsPage(),
    ShopPage(),
    ProfilePage(),
  ];

  void _onIconTapped(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _appPages[_selectedPageIndex],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedPageIndex: _selectedPageIndex,
        onIconTape: _onIconTapped,
      ),
    );
  }
}
