import 'package:flutter/material.dart';

class todayCheck extends StatefulWidget {
  @override
  TodayCheckState createState() => TodayCheckState();
}

class TodayCheckState extends State<todayCheck> {
  @override

  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text( "오늘 당번 : OOO, OOO",
          style: TextStyle(
            fontFamily: "Pretendard", fontWeight: FontWeight.w700, fontSize: 50,
          ),
        ),
      ],
    );
  }
}
