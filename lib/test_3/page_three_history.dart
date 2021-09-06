import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PageThreeHistory extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      width: width * 0.9,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: width * 0.03, vertical: 20),
            child: Text(
              "Riwayat Rebate",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w700,
                fontSize: 18,
                color: Color(0xFFFF9A00)
              ),
            ),
          ),
          ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 5,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: width * 0.02, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset("assets/test_3/history_icon.png"),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                "#REBATEC120211",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: Color(0xFF212529)
                              ),
                            ),
                            Text(
                                "20 Juli 2021",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                color: Color(0xFF6C757D)
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Container(
                      padding:const EdgeInsets.symmetric(vertical: 7, horizontal: 18),
                      decoration: BoxDecoration(
                        color: Color(0xFFFF9A00),
                        borderRadius: BorderRadius.circular(17)
                      ),
                      child: Text(
                        "Rp 150.000",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Colors.white
                        ),
                      ),
                    )
                  ],
                ),
              );
          })
        ],
      ),
    );
  }

}