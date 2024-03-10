import 'package:flutter/material.dart';

class monthCheck extends StatefulWidget {
  MonthState createState() => MonthState();
}

class MonthState extends State<monthCheck> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body : Column(
        children: [
          const Text( "이달의 당번 리스트",
            style: TextStyle(
              fontFamily: "Pretendard", fontWeight: FontWeight.w700, fontSize: 50,
            ),
          ),
        ],
      ),
    );
  }
}
