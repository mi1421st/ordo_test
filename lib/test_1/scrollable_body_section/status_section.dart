import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StatusSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * 0.075),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                "assets/test_1/clock.png",
                fit: BoxFit.contain,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Status",
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xFF47623F)
                    ),
                  ),
                  Text(
                    "Sedang mengambil barang",
                    style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Color(0xFF061737)
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            width: 15,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Image.asset(
              "assets/test_1/Dots.png",
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Row(
            children: [
              Image.asset(
                "assets/test_1/pin.png",
                fit: BoxFit.contain,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Alamat anda",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xFF47623F)
                    ),
                  ),
                  Text(
                    "Taman Indah Dago No. 612",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Color(0xFF061737)
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

}