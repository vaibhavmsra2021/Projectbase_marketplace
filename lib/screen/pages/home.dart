import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trumio_v1/screen/pages/home_page/home_page.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MobileScreen extends StatefulWidget {
  @override
  _MobileScreenState createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),


  ];
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (BuildContext context, SizingInformation sizingInformation) {
        return SafeArea(
          child: Scaffold(
            bottomNavigationBar:


          BottomNavigationBar(
            unselectedItemColor: Colors.grey,
            selectedItemColor: Colors.black,

              onTap: onTabTapped, // new
              currentIndex: _currentIndex, // new
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.home,),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.userFriends,),
                  label: 'MarketPlace',
                ),
                BottomNavigationBarItem(
                    icon: Icon(FontAwesomeIcons.plusCircle,),
                    label: 'UpSkilling'
                ),
                BottomNavigationBarItem(
                    icon: Icon(FontAwesomeIcons.solidBell,),
                    label: 'Projects'
                ),
                BottomNavigationBarItem(
                    icon: Icon(FontAwesomeIcons.briefcase,),
                    label: 'MyTeam'
                )
              ],
            ),




            body: _children[_currentIndex],


          ),
        );
      },
    );
  }




}

