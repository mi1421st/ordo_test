import 'package:flutter/material.dart';

class PageOneBottomNavigation extends StatelessWidget{
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {return BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    showSelectedLabels: false,
    showUnselectedLabels: false,
    currentIndex: _currentIndex,
    items: [
      BottomNavigationBarItem(
          icon: Image.asset('assets/test_1/assignment.png'),
          label: "Assignment",
      ),
      BottomNavigationBarItem(
        icon: Image.asset('assets/test_1/swap_horiz.png'),
        label: "Swap",
      ),
      BottomNavigationBarItem(
          icon: Image.asset('assets/test_1/home_alt_fill.png'),
          label: "Home",
      ),
      BottomNavigationBarItem(
          icon: Image.asset('assets/test_1/notifications_none.png'),
          label: "Notification",
          ),
      BottomNavigationBarItem(
          icon: Image.asset('assets/test_1/person.png'),
          label: "Person",
          ),
    ],
  );

  }

}