// ignore_for_file: camel_case_types

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class bottomNavigation extends StatefulWidget {
  bottomNavigation({super.key});

  @override
  State<bottomNavigation> createState() => _bottomNavigationState();
}

class _bottomNavigationState extends State<bottomNavigation> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    List<Widget> myList = const [
      Text(
        "Home",
        style: TextStyle(fontSize: 40),
      ),
      Text(
        "Search",
        style: TextStyle(fontSize: 40),
      ),
      Text(
        "Like",
        style: TextStyle(fontSize: 40),
      ),
      Text(
        "Profile",
        style: TextStyle(fontSize: 40),
      )
    ];
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        //params
        onPressed: () {},
        //params
        child: Icon(Icons.add),
      ),
      body:  Center(
        child: myList[_currentIndex],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: const [
          Icons.home,
          Icons.search,
          Icons.favorite,
          Icons.person,
        ],
        activeIndex: _currentIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.softEdge,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        onTap: (index) => setState(() => _currentIndex = index),
      ),
    );
  }
}
