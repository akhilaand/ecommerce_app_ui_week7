// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:bottom_nav_bar_pack/bottom_nav_bar_item.dart';
import 'package:bottom_nav_bar_pack/bottom_nav_bar_pack.dart';

// Project imports:
import 'package:cloth_app/presentation/categoryScreen/category_screen.dart';
import 'package:cloth_app/presentation/homeScreen/home_screen.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  static final _pageList = [
    const HomeScreen(),
    const CategoryScreen(),
    const HomeScreen(),
    const HomeScreen()
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: _pageList[currentIndex],
      extendBody: true,
      bottomNavigationBar: DottedBottomAppBar(
        margin: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
        borderRadius: 25,
        itemBorderRadius: 20,
        currentIndex: currentIndex,
        items: [
          BottomNavBarItem(icon: Icons.home, title: 'Home'),
          BottomNavBarItem(icon: Icons.explore, title: 'Explore'),
          BottomNavBarItem(icon: Icons.shopping_cart_rounded, title: 'Cart'),
          BottomNavBarItem(icon: Icons.person, title: 'Profile'),
        ],
        onTap: (int val) => setState(() {
          currentIndex = val;
        }),
      ),
    );
  }
}
