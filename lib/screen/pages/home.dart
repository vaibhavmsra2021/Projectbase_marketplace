import 'dart:collection';

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
  TextEditingController _searchController = TextEditingController();
  Queue<String> searchHistory = Queue<String>();
  int _currentIndex = 0;
  final List<Widget> _children = [
    DashBoardPage(),
    marketPlace(),
    Upskilling(),
    Projects(),
    MyTeam(),
    Clubs(),
  ];

  void performSearch() {
    String searchText = _searchController.text.trim();
    if (searchText.isNotEmpty) {
      searchHistory.addFirst(searchText);
      if (searchHistory.length > 10) {
        searchHistory.removeLast();
      }
      _searchController.clear();
      print('Search History: ${searchHistory.toList()}');
      setState(() {});
    }
  }

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
                onSubmitted: (value) {
                  performSearch();
                },
                controller: _searchController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 88, 162, 163), width: 2),
                  ),
                  prefixIcon: IconButton(
                    icon: Icon(
                      Icons.search,
                    ),
                    onPressed: () {
                      performSearch();
                    },
                  ),
                  hintText: "Search In Trumio",
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.mic,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(Icons.account_circle, size: 35),
            )
          ],
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
      ),
    );
  }
}
