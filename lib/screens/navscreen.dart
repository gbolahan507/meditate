import 'package:flutter/material.dart';
import 'package:meditaion_app/util/colors.dart';
import 'package:meditaion_app/widget/organism/homepage/homepage_screen.dart';
import 'package:meditaion_app/widget/organism/open_ups/homepage/open_up_screen.dart';
import 'package:meditaion_app/widget/organism/proffessionals/proffessional_screen.dart';

class NavScreen extends StatefulWidget {
  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> _screens = [
    HomePageScreen(),
    Scaffold(),
    OpenHome_page(),
    Scaffold(),
    Professionals_screen(),
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(
          index: _selectedIndex,
          children: _screens,
        ),
        bottomNavigationBar: BottomNavigationBar(
            onTap: (index) => setState(() => _selectedIndex = index),
            currentIndex: _selectedIndex,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            selectedItemColor: pink300,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  title: _selectedIndex == 0
                      ? DotContainer()
                      : Text(
                          'home',
                        )),
              BottomNavigationBarItem(
                  icon: Icon(Icons.group),
                  title: _selectedIndex == 1
                      ? DotContainer()
                      : Text(
                          'Groups',
                        )),
              BottomNavigationBarItem(
                  icon: Icon(Icons.chat_bubble_outline),
                  title: _selectedIndex == 2
                      ? DotContainer()
                      : Text(
                          'Open Up',
                        )),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  title: _selectedIndex == 3
                      ? DotContainer()
                      : Text(
                          'Explore',
                        )),
              BottomNavigationBarItem(
                  icon: Icon(Icons.menu),
                  title: _selectedIndex == 4
                      ? DotContainer()
                      : Text(
                          'Professional',
                        )),
            ]));
  }
}

class DotContainer extends StatelessWidget {
  const DotContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 5),
        height: 8,
        width: 8,
        decoration: BoxDecoration(shape: BoxShape.circle, color: pink300));
  }
}
