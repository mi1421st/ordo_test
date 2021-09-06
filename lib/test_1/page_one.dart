import 'package:flutter/material.dart';
import 'package:ordo_test/test_1/page_one_app_bar.dart';
import 'package:ordo_test/test_1/page_one_bot_nav.dart';
import 'package:ordo_test/test_1/page_one_map.dart';
import 'package:ordo_test/test_1/page_one_scrollable.dart';

class PageOne extends StatefulWidget {
  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PageOneAppBar(),
      body: Container(
        child: Stack(
          children: [
            PageOneMapSection(),
            PageOneScrollableBody()
          ],
        ),
      ),
      bottomNavigationBar: PageOneBottomNavigation(),
    );
  }

}