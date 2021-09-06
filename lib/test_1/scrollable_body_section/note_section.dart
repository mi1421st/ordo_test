import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NoteSection extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      // color: Colors.blue,
      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Catatan Pesanan",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit,"
                " sed do eiusmod tempor incididunt ut labore et dolore "
                "magna ullamco laboris nisi ut aliquip ex ea commodo .",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w400,
              fontSize: 13,
              height: 1.5,
              color: Color(0xFF8A7F7F)
            ),
          ),
        ],
      ),
    );
  }

}