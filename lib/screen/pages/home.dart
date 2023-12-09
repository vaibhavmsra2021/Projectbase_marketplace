import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trumio/screen/pages/home_page/clubs.dart';
import 'package:trumio/screen/pages/home_page/home_page.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:trumio/screen/pages/home_page/market_place.dart';
import 'package:trumio/screen/pages/home_page/my_team.dart';
import 'package:trumio/screen/pages/home_page/upskilling_page.dart';
import 'package:trumio/screen/pages/home_page/projects.dart';
class MobileScreen extends StatefulWidget {
  @override
  _MobileScreenState createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    MyHomePage(),
    marketPlace(),
    Upskilling(),
    Projects(),
    MyTeam(),
    Clubs(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.blueAccent,
        title: Text("Trumio", style:TextStyle(color: Colors.white, fontSize: 17)),

      ),
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.black,
          currentIndex: _currentIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.dashboard,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.people_alt,
              ),
              label: 'MarketPlace',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.self_improvement,
                ),
                label: 'UpSkilling'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.work,
                ),
                label: 'Projects'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.people_rounded,
                ),
                label: 'My Teams'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.people_alt_outlined,
                ),
                label: 'Clubs')
          ],
          onTap: (pageIndex) {
            setState(() {
              _currentIndex = pageIndex;
            });
          },
        ),
      ),
    );
  }
}
