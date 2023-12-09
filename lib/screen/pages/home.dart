import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trumio_v1/screen/pages/home_page/home_page.dart';
import 'package:trumio_v1/screen/pages/home_page/upskilling_page.dart';

import 'home_page/clubs_page.dart';
import 'home_page/marketplace_page.dart';
import 'home_page/myTeam_page.dart';
import 'home_page/projects.dart';

class MobileScreen extends StatefulWidget {
  @override
  _MobileScreenState createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    DashBoardPage(),
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
        toolbarHeight: 80,
        backgroundColor: const Color.fromARGB(0, 205, 99, 99),
        title: Container(
          child: Container(
            height: 55,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: const BorderSide(
                      color: Color.fromARGB(255, 88, 162, 163), width: 2),
                ),
                prefixIcon: IconButton(
                  icon: Icon(Icons.search,),
                  onPressed: () {},
                ),
                hintText: "Search In Trumio",
                suffixIcon: IconButton(
                  icon: Icon(Icons.camera_alt_outlined,),
                  onPressed: () {},
                ),
              ),
            ),
          ),
        ),
        actions: [Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Icon(Icons.account_circle, size: 35),
        )],
      ),
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.blueAccent,
          selectedFontSize: 15,
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
        // bottomNavigationBar: BottomNavigationBar(
        //   unselectedItemColor: Colors.grey,
        //   selectedItemColor: Colors.black,
        //   currentIndex: _currentIndex,
        //   items: const [
        //     BottomNavigationBarItem(
        //       icon: Icon(
        //         FontAwesomeIcons.home,
        //       ),
        //       label: 'Home',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(
        //         FontAwesomeIcons.userFriends,
        //       ),
        //       label: 'MarketPlace',
        //     ),
        //     BottomNavigationBarItem(
        //         icon: Icon(
        //           FontAwesomeIcons.plusCircle,
        //         ),
        //         label: 'UpSkilling'),
        //     BottomNavigationBarItem(
        //         icon: Icon(
        //           FontAwesomeIcons.solidBell,
        //         ),
        //         label: 'Projects'),
        //     BottomNavigationBarItem(
        //         icon: Icon(
        //           FontAwesomeIcons.briefcase,
        //         ),
        //         label: 'MyTeam')
        //   ],
        //   onTap: (pageIndex) {
        //     setState(() {
        //       _currentIndex = pageIndex;
        //     });
        //   },
        // ),
      ),
    );
  }
}
