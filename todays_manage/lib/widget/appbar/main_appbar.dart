import 'package:flutter/material.dart';

class MainAppbar extends StatelessWidget implements PreferredSizeWidget {
  @override

  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xffFFD600),
      centerTitle: true,
      title: Text(
        "오늘의 당번",
        style: TextStyle(
          fontFamily: "Pretendard", fontWeight: FontWeight.w900, fontSize: 40,
        ),
      ),
    );
  }

  @override

  Size get preferredSize => Size.fromHeight(88);
}