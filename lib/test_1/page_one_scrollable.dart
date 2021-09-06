import 'package:flutter/material.dart';
import 'package:ordo_test/test_1/scrollable_body_section/header_section.dart';
import 'package:ordo_test/test_1/scrollable_body_section/note_section.dart';
import 'package:ordo_test/test_1/scrollable_body_section/order_section.dart';
import 'package:ordo_test/test_1/scrollable_body_section/status_section.dart';

class PageOneScrollableBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;

    return DraggableScrollableSheet(
        initialChildSize: 0.25,
        maxChildSize: 0.7,
        minChildSize: 0.25,
        builder: (context, scrollController) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25)
              )),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: SingleChildScrollView(
              controller: scrollController,
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 120,
                    height: 5,
                    color: Color(0xFF47623F)
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  HeaderSection(),
                  // Text("Header"),
                  SizedBox(
                    height: 20,
                  ),
                  // Text("status"),
                  StatusSection(),
                  SizedBox(
                    height: 20,
                  ),
                  // Text("order"),
                  OrderSection(),
                  SizedBox(
                    height: 20,
                  ),
                  // Text("Note"),
                  NoteSection(),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          );
        }
    );


  }

}