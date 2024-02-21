import 'package:flutter/material.dart';

class MainAppbar extends StatelessWidget { // 정적인 화면
  // const MainAppbar({Key? key}) : super(key: key);

  @override

  // 위젯을 build 를 통해 계층적으로 조합해야 한다!
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFD600),
      body: Container(
        alignment: Alignment.center,
        child: const Text(
          "오늘의 당번",
          style: TextStyle(
            fontFamily: "Pretendard", fontWeight: FontWeight.w900, fontSize: 40,
          ),
        ),
      ),
    );
  }
}