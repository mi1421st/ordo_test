import 'package:flutter/material.dart';
import 'package:ordo_test/test_3/page_three_app_bar.dart';
import 'package:ordo_test/test_3/page_three_floating_btn.dart';
import 'package:ordo_test/test_3/page_three_header.dart';
import 'package:ordo_test/test_3/page_three_history.dart';
import 'package:ordo_test/test_3/page_three_nav_bar.dart';
import 'package:ordo_test/test_3/page_three_rebate.dart';

class PageThree extends StatefulWidget {
  @override
  _PageThreeState createState() => _PageThreeState();
}


class _PageThreeState extends State<PageThree> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: PageThreeAppBar(),
      backgroundColor: Color(0xFFFCF8F8),
      body: SingleChildScrollView(
        child: Column(
          children: [
            PageThreeHeader(),
            SizedBox(
              height: 15,
            ),
            PageThreeRebate(),
            SizedBox(
              height: 15,
            ),
            PageThreeHistory(),
          ],
        ),
      ),
      bottomNavigationBar: PageThreeBottomNavigation(),
      floatingActionButton: PageThreeFloatingActionButton(),
    );
  }

}