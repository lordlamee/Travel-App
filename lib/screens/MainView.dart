import 'package:flutter/material.dart';
import 'package:travel_app/screens/HomeScreen.dart';
import 'package:travel_app/screens/SavedScreen.dart';
import 'package:travel_app/screens/TripsScreen.dart';
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
            icon: homeIcon,
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), title: Text('Favorite')),
          BottomNavigationBarItem(icon: mapIcon, title: Text('Description')),
          BottomNavigationBarItem(icon: profileIcon, title: Text('Profile'))
        ],
      ),
    );
  }
}
