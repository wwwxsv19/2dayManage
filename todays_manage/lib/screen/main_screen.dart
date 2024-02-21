import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widget/appbar/main_appbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  // 위젯을 build 를 통해 계층적으로 조합해야 한다!
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(88),
          child: MainAppbar(),
        ),
        body: Column( children: [ const Text(
            "하단바 test",
            style: TextStyle(
              fontFamily: "Pretendard", fontWeight: FontWeight.w700, fontSize: 50,
            ), ), ], ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "오늘의 당번"),
            BottomNavigationBarItem(icon: Icon(Icons.calendar_month), label: "이달의 당번")
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

/*
MaterialApp : 머티리얼 디자인 적용
Scaffold : 화면 구조 설계
AppBar : 화면 상단의 앱 바 구조
Text : 제목 / 본문 문자열 등
Center : 가운데 정렬
GestureDetector : 사용자의 이벤트 처리
*/