import 'package:flutter/material.dart';
import 'package:ordo_test/test_2/page_two_app_bar.dart';
import 'package:ordo_test/test_2/page_two_body.dart';
import 'package:ordo_test/test_2/page_two_bot_nav.dart';
import 'package:ordo_test/test_2/page_two_header.dart';

class PageTwo extends StatefulWidget {
  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCF8F8),
      appBar: PageTwoAppBar(),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PageTwoHeader(),
              PageTwoBody()
            ],
          ),
        ),
      ),
      bottomNavigationBar: PageTwoBottomNavigation(),
    );
  }

}