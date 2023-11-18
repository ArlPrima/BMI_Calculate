import 'package:bmi/page/home.dart';
import 'package:bmi/page/infor.dart';
import 'package:bmi/tools/color.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const Home(),
    const Info(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        color: blue,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20), 
          child: GNav(
            gap: 50,
            backgroundColor: blue,
            color: yellow,
            activeColor: yellow,
            tabBackgroundColor: gray,
            padding: const EdgeInsets.all(8),
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'BERANDA',
              ),
              GButton(
                icon: Icons.info,
                text: 'INFORMASI',
              )
            ],
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
