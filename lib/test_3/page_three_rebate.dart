import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PageThreeRebate extends StatelessWidget{

  int counter = 14;

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
        children: [
          Container(
            padding: const EdgeInsets.only(top: 12, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                    "Daftar Rebate",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: Color(0xFF94AFB6)
                  ),
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      decoration: BoxDecoration(
                        color: Color(0xFFFF9A00),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(
                          child: Text(
                              "Semua",
                            style: GoogleFonts.poppins(
                              fontSize: 13,
                              color: Colors.white
                            ),
                          )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                        color: Color(0xFF53B2FC),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(
                          child: Row(
                            children: [
                              Text(
                                  "Filter",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white
                                ),
                              ),
                              Image.asset(
                                "assets/test_3/filter.png"
                              )
                            ],
                          )),
                    )
                  ],
                )
              ],
            ),
          ),
          Divider(
            thickness: 2,
            color: Color(0xFFBBBBBB),
          ),
          ListView.builder(
            padding:  const EdgeInsets.symmetric(horizontal: 20),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 6,
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "ID Transaksi",
                          style: GoogleFonts.poppins(
                              color: Color(0xFF94AFB6)
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "#EC1201211",
                          style: GoogleFonts.poppins(
                              color: Color(0xFF3D6670)
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Rebate",
                          style: GoogleFonts.poppins(
                              color: Color(0xFF94AFB6)
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Rp. 150.000",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF41BE06)
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Tanggal",
                          style: GoogleFonts.poppins(
                              color: Color(0xFF94AFB6)
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          index % 2 == 0 ? "$counter Juli 2021" :
                          index == 3 ? "${counter += 2} Juli 2021" :"${counter += 1} Juli 2021",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF41BE06)
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }

}