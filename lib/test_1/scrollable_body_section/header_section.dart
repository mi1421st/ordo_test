import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      // color: Colors.blue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                width: width * 0.04,
              ),
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  // color: Colors.lightBlue
                ),
                child: Stack(
                  children: [
                    Image.asset(
                      "assets/test_1/Frame.png",
                      width: 70,
                      height: 70,
                      fit: BoxFit.contain,
                    ),
                    Container(
                      // color: Colors.blue,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Image.asset(
                          "assets/test_1/photo.png",
                          width: 60,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ]
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "David Morel",
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.w600,
                      fontSize: 18
                    ),
                  ),
                  Text(
                      "B 1201 FA",
                    style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w700,
                        fontSize: 17,
                        color: Color(0xFF92D274)
                    ),
                  )
                ],
              )
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            // color: Colors.deepOrangeAccent,
            child: Image.asset(
              "assets/test_1/Phone.png",
              width: 80,
              height: 80,
              fit: BoxFit.contain,
            ),
          ),

        ],
      ),
    );
  }

}