// ignore_for_file: camel_case_types, duplicate_ignore

import 'package:dine/screens/home_screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class bottomBar extends StatefulWidget {
  const bottomBar({Key? key}) : super(key: key);

  @override
  State<bottomBar> createState() => _bottomBarState();
}

// ignore: camel_case_types
class _bottomBarState extends State<bottomBar> {
  int selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const homeScreen(),
    const Text("Search"),
    const Text("Tickets"),
    const Text("Profile")
  ];
  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(child: _widgetOptions[selectedIndex]),
        bottomNavigationBar: BottomNavigationBar(
          onTap: _onItemTapped,
          elevation: 10,
          showSelectedLabels: false,
          selectedItemColor: const Color.fromARGB(255, 15, 66, 92),
          type: BottomNavigationBarType.shifting,
          unselectedItemColor: const Color.fromARGB(255, 88, 16, 28),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
                label: "Ticket"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
                label: "profile")
          ],
        ));
  }
}
