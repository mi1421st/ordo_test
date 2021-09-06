import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PageTwoBody extends StatelessWidget{

  List<String> path = [
    "assets/test_2/pic1.png",
    "assets/test_2/pic3.png",
    "assets/test_2/pic2.png",
    "assets/test_2/pic2.png",
    "assets/test_2/pic1.png",
    "assets/test_2/pic3.png",
    "assets/test_2/pic1.png",
    "assets/test_2/pic2.png",
    "assets/test_2/pic3.png",
    "assets/test_2/pic3.png",
    "assets/test_2/pic1.png",
    "assets/test_2/pic2.png",
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * 0.04, vertical: 20),
      child: GridView.builder(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 0,
            crossAxisSpacing: 0,
            crossAxisCount: 3,
          ),
          itemCount: 12,
          itemBuilder: (BuildContext context, int index) {
            return Stack(
              children: [
                Image.asset(path[index]),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        padding: const EdgeInsets.all(5),
                          child: Image.asset("assets/test_2/rating.png")
                      )
                    ),
                    Container(
                      color: Colors.black87.withOpacity(0.4),
                      width: double.infinity,
                      padding: const EdgeInsets.all(5),
                      child: Text(
                        "Nama Customer",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          color: Colors.white
                        ),
                      ),
                    )
                  ],
                )
              ],
            );
          }
      ),
    );
  }

}