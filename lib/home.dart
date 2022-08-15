import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'tabs/home_tab.dart';
import 'tabs/locations_tab.dart';
import 'tabs/notification_tab.dart';
import 'tabs/saved_tab.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeTab(),
    SavedTab(),
    LocationsTab(),
    NotificationTab(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.transparent,
        iconSize: 24,
        elevation: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xffFF9677),
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Iconsax.home_2),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.save_2),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.location),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.notification_circle),
            label: '',
          ),
        ],
      ),
    );
  }
}
