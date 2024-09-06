// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables, prefer_final_fields, prefer_const_constructors

import 'dart:math';
import 'package:alhora_project/Pages/Search_page.dart';

import 'package:alhora_project/Pages/dashboard_page.dart';
import 'package:alhora_project/Pages/profile_page.dart';
import 'package:alhora_project/cards.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> with TickerProviderStateMixin {
  int _currentIndex = 1;

  List<Widget> _pages = [
    Cards(),
    DashboardPage(),
    ProfilePage(),
  ];

  late AnimationController _animationController;
  late Animation<double> _animation;
  PageController _pageController = PageController(initialPage: 1);

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 200),
    );
    _animation = Tween<double>(begin: 1, end: 1.5).animate(_animationController);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _pages,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 42,
        selectedIconTheme: IconThemeData(
          color: Colors.black,
        ),
        items: [
          BottomNavigationBarItem(
            icon: _currentIndex == 0
                ? ScaleTransition(
                    scale: _animation,
                    child: Icon(Icons.search),
                  )
                : Icon(Icons.search),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _currentIndex == 1
                ? ScaleTransition(
                    scale: _animation,
                    child: Icon(Icons.trending_up_sharp),
                  )
                : Icon(Icons.trending_up_sharp),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _currentIndex == 2
                ? ScaleTransition(
                    scale: _animation,
                    child: Icon(Icons.person),
                  )
                : Icon(Icons.person),
            label: '',
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (value) {
          _pageController.animateToPage(
            value,
            duration: Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          );
          setState(() {
            _currentIndex = value;
            _animationController.forward(from: 0);
          });
        },
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    _animationController.dispose();
    super.dispose();
  }
}