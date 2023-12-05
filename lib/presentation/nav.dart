import 'package:car_rental/presentation/Screens/history.dart';
import 'package:car_rental/presentation/Screens/home_page.dart';
import 'package:flutter/material.dart';

class Nav extends StatefulWidget {
  const Nav({super.key});

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  final List<Widget> _pages = <Widget>[const HomePage(), const History()];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          if (index == 0 || index == 1) {
            setState(() {
              _selectedIndex = index;
            });
          }
        },
        showUnselectedLabels: true,
        selectedLabelStyle:
            const TextStyle(fontFamily: 'Poppins', fontSize: 12),
        selectedItemColor: const Color(0xffff6e49),
        unselectedItemColor: Colors.grey,
        iconSize: 30,
        currentIndex: _selectedIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_rounded,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.history,
            ),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.car_rental,
            ),
            label: 'Car',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border,
            ),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_2_outlined,
            ),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
