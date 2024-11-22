import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_3/screens/screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  static const List<Widget> _pages = <Widget>[
    DashboardScreen(),
    NotificationScreen(),
    PaymentScreen(),
    UserProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 28,
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.star_half_outlined), label: "Contact"),
          BottomNavigationBarItem(
              icon: Icon(Icons.monetization_on_rounded), label: "Payment"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
        selectedItemColor: Colors.white, // Active icon color
        unselectedItemColor:
            Theme.of(context).primaryColorLight, // Inactive icon color
        backgroundColor: Theme.of(context).primaryColor, // Background color
        elevation: 8, // Shadow depth
        showUnselectedLabels: true, // Show labels when unselected
        type: BottomNavigationBarType.fixed, // Default (fixed) layout
      ),
    );
  }
}
