import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:travel_app/screens/home_screen.dart';
import 'package:travel_app/screens/saved_screen.dart';
import 'package:travel_app/screens/trips_screen.dart';
import 'package:travel_app/widgets.dart';

List pages = [
  HomeScreen(),
  SavedScreen(),
  TripsScreen(),
  Container(),
];
int selectedIndex = 0;

class MainView extends StatefulWidget {
  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        backgroundColor: Color(0xFFF5F6FF),
        selectedIconTheme: IconThemeData(color: Color(0xFF2B3273)),
        unselectedIconTheme: IconThemeData(color: Color(0xFF989DC2)),
        items: [
          BottomNavigationBarItem(
            icon: Icon(FlutterIcons.home_ant),
            title: SizedBox(),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), title: SizedBox()),
          BottomNavigationBarItem(
            icon: Icon(FlutterIcons.map_outline_mco),
            title: SizedBox(),
          ),
          BottomNavigationBarItem(
            icon: Icon(FlutterIcons.person_outline_mdi),
            title: SizedBox(),
          ),
        ],
      ),
    );
  }
}
