import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderSection extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * 0.04),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              "Pesanan",
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w600
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ListView.builder(
            padding: EdgeInsets.zero,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 2,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle
                              ),
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              child: Image.asset(
                                  "assets/test_1/order.png",
                                width: 80,
                                height: 80,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    index == 0 ? "Strawberry" : "Nanas",
                                  style: GoogleFonts.inter(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                    "100 Gram",
                                  style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: Color(0xFF979696)
                                  ),
                                ),
                                Text(
                                    "Rp 75.000",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      color: Color(0xFF47623F)
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.only(right: width * 0.1),
                            child: Text(
                                "2 Items",
                              style: GoogleFonts.inter(
                                fontSize: 14,
                                fontWeight: FontWeight.w700
                              ),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        "Catatan Item",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 14
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit,"
                        " sed do eiusmod tempor incididunt ut labore et dolore magna "
                        "ullamco laboris nisi ut aliquip ex ea commodo .",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                        color: Color(0xFF8A7F7F),
                        height: 1.5,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Visibility(
                      visible: index == 0,
                      child: Divider(
                        thickness: 1,
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }

}