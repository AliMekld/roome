import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:retni5/modules/homemodules/explore.dart';
import 'package:retni5/modules/homemodules/profile.dart';
import 'package:retni5/modules/homemodules/trips.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State {
  List<String> title = ["Explore", "Trips", "Profile"];
  int currentIndex = 0;
  List<Widget> pages = [
    Explore(),
    Trips(),
    Pofile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey.shade400,
        elevation: 0,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.teal,
        iconSize: 24,
        selectedLabelStyle: TextStyle(color: Colors.teal),
        items: [
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.search), label: "Explore"),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.solidHeart), label: "Trips"),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.userCircle), label: "Profile"),
        ],
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
      ),
      body: pages[currentIndex],
    );
  }
}
