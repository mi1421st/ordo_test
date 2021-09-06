import 'package:flutter/material.dart';

class PageThreeBottomNavigation extends StatelessWidget{
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {return BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    showSelectedLabels: false,
    showUnselectedLabels: false,
    currentIndex: _currentIndex,
    items: [
      BottomNavigationBarItem(
        icon: Image.asset('assets/test_3/home.png'),
        label: "Home",
      ),
      BottomNavigationBarItem(
        icon: Image.asset('assets/test_3/note.png'),
        label: "Note",
      ),
      BottomNavigationBarItem(
        icon: Image.asset('assets/test_3/restore.png'),
        label: "Restore",
      ),
    ],
  );

  }

}