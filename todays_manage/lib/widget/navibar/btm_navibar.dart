import 'package:flutter/material.dart';

import '../../screen/today.dart';
import '../../screen/month.dart';

class NaviAppbar extends StatefulWidget {
  @override
  NaviAppbarState createState() => NaviAppbarState();
}

class NaviAppbarState extends State<NaviAppbar> { // 정적인 화면
  // const MainAppbar({Key? key}) : super(key: key);
  int _selectedIndex = 0;

  final List<Widget> _navIndex = [
    todayCheck(),
    monthCheck(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override

  // 위젯을 build 를 통해 계층적으로 조합해야 한다!
  Widget build(BuildContext context) {
    return Scaffold(
      body: _navIndex.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: "오늘의 당번" ),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month), label: "이달의 당번" )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xffFFD600),
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        onTap: _onItemTapped,
      ),
    );
  }
}