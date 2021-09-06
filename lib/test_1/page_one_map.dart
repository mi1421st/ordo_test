import 'package:flutter/material.dart';

class PageOneMapSection extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    double width  = MediaQuery.of(context).size.width;
    double height  = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        Image.asset(
            "assets/test_1/map.png",
          height: height,
          width: width,
          fit: BoxFit.cover,
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Image.asset(
              "assets/test_1/tracking.png",
            height: height * 0.6,
            width: width *0.6,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }

}