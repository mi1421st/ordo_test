import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PageTwoHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("assets/test_2/Photo.png"),
              Column(
                children: [
                  Text(
                      '5.0',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Color(0xFF262626)
                    ),
                  ),
                  Text(
                      'Rating',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: Color(0xFF262626)
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                      '100',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Color(0xFF262626)
                    ),
                  ),
                  Text(
                      'Review',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: Color(0xFF262626)
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                      '162',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Color(0xFF262626)
                    ),
                  ),
                  Text(
                      'Pesanan',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: Color(0xFF262626)
                    ),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Dina Florist",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: Color(0xFF262626)
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
              "Toko Bunga terbaiks se Indonesia Raya",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Color(0xFF262626)
            ),
          ),
          Text(
              "Harga Murah Produk Berkualitas",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Color(0xFF262626)
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              width: width * 0.9,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Color(0xFF3C3C43).withOpacity(0.4)
                )
              ),
              child: Center(
                child: Text(
                  "PORTFOLIO",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF262626)
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

}