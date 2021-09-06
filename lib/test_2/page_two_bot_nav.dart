import 'package:flutter/material.dart';

class PageTwoBottomNavigation extends StatelessWidget{
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {return BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    showSelectedLabels: false,
    showUnselectedLabels: false,
    currentIndex: _currentIndex,
    items: [
      BottomNavigationBarItem(
        icon: Image.asset('assets/test_2/reader_mode.png'),
        label: "Reader",
      ),
      BottomNavigationBarItem(
        icon: Image.asset('assets/test_2/swap_horiz.png'),
        label: "Swap",
      ),
      BottomNavigationBarItem(
        icon: Image.asset('assets/test_2/inbox.png'),
        label: "Inbox",
      ),
      BottomNavigationBarItem(
        icon: Image.asset('assets/test_2/assessment.png'),
        label: "Assessment",
      ),
      BottomNavigationBarItem(
        icon: Image.asset('assets/test_2/helmet.png'),
        label: "Helmet",
      ),
    ],
  );

  }

}