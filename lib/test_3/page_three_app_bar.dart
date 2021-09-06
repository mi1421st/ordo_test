import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PageThreeAppBar extends StatefulWidget with PreferredSizeWidget{
  @override
  _PageThreeAppBarState createState() => _PageThreeAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(70);
}


class _PageThreeAppBarState extends State<PageThreeAppBar>{
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: false,
      leading: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Image.asset(
          "assets/test_3/back.png",
        ),
      ),
      toolbarHeight: 120,
      shadowColor: Colors.grey,
      title: Container(
          padding: EdgeInsets.all(12.0),
          // color: Colors.green,
          child: Text(
            "FINANSIAL",
            style: GoogleFonts.poppins(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: Color(0xFF545454)
            ),
          )
      ),
      actions: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Image.asset(
              "assets/test_3/assessment.png",
            ),
              SizedBox(
                width: 5,
              ),
              Image.asset(
                "assets/test_3/bell.png",
              ),
            ],
          ),
        )
      ],
    );
  }

}
