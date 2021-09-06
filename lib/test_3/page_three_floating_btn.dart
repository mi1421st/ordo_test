import 'package:flutter/material.dart';

class PageThreeFloatingActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return  Container(
      width: width * 0.9,
      height: 60,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
          colors: [
            Color(0xFF127CCE),
            Color(0xFF53B2FC),
          ]
        ),
        borderRadius: BorderRadius.circular(15)
      ),
      child: Stack(
        children: [
          Center(
            child: Text(
              "Complain",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: Colors.white
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Image.asset("assets/test_3/arrow.png")),
          )
        ],
      )
    );
  }

}