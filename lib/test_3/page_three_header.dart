import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PageThreeHeader extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Center(
          child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              width: width * 0.9,
              height: 120,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "TOTAL BONUS",
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFF9A00)
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Rp 5.000.000,00",
                    style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF6D6D6D)
                    ),
                  ),
                ],
              )
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Center(
          child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              width: width * 0.9,
              height: 120,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 10,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "PENDING BONUS",
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFF9A00)
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Rp 50.000,00",
                    style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF6D6D6D)
                    ),
                  ),
                ],
              )
          ),
        ),
      ],
    );
  }

}