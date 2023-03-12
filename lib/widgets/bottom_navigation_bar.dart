import 'package:cloth_app/presentation/homeScreen/home_screen.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class CustomBottomNavigtionBar extends StatefulWidget {
  const CustomBottomNavigtionBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavigtionBar> createState() =>
      _CustomBottomNavigtionBarState();
}

class _CustomBottomNavigtionBarState extends State<CustomBottomNavigtionBar> {
  static final _pageList = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen()
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageList[currentIndex],
      extendBody: false,
      bottomNavigationBar: FloatingNavbar(

        margin: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
        borderRadius: 25,
        itemBorderRadius: 20,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        currentIndex: currentIndex,
        items: [
          FloatingNavbarItem(icon: Icons.home, title: 'Home'),
          FloatingNavbarItem(icon: Icons.explore, title: 'Explore'),
          FloatingNavbarItem(icon: Icons.chat_bubble_outline, title: 'Chats'),
          FloatingNavbarItem(icon: Icons.settings, title: 'Settings'),
        ],
      ),
    );
  }
}
