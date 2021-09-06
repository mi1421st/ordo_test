import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PageTwoAppBar extends StatefulWidget with PreferredSizeWidget{
  @override
  _PageTwoAppBarState createState() => _PageTwoAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(70);
}


class _PageTwoAppBarState extends State<PageTwoAppBar>{
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
          "assets/test_2/back.png",
        ),
      ),
      toolbarHeight: 120,
      shadowColor: Colors.grey,
      title: Container(
          padding: EdgeInsets.all(12.0),
          // color: Colors.green,
          child: Text(
            "PORTFOLIO VENDOR",
            style: GoogleFonts.poppins(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: Color(0xFF545454)
            ),
          )
      ),
      actions: [
        Image.asset(
          "assets/test_2/notifications.png",
        ),
      ],
    );
  }

}
