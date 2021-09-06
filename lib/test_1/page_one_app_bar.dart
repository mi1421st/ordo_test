import 'package:flutter/material.dart';

class PageOneAppBar extends StatefulWidget with PreferredSizeWidget{
  @override
  _PageOneAppBarState createState() => _PageOneAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(70);
}


class _PageOneAppBarState extends State<PageOneAppBar>{
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
          "assets/test_1/arrow_back.png",
        ),
      ),
      toolbarHeight: 120,
      shadowColor: Colors.grey,
      title: Container(
        padding: EdgeInsets.all(12.0),
        // color: Colors.green,
        child: Text(
          "LACAK PESANAN",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w700,
            color: Color(0xFF545454)
          ),
        )
      ),
      actions: [
        Image.asset(
          "assets/test_1/shopping_bag.png",
        ),
      ],
    );
  }

}
