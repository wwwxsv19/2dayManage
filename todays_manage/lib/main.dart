import 'package:flutter/material.dart';

import './screen/today.dart';
import '../widget/appbar/main_appbar.dart';
import '../widget/navibar/btm_navibar.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ODangApp',
      home: MyAppPage(),
    );
  }
}

class MyAppPage extends StatefulWidget {
  const MyAppPage({super.key});
  @override

  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyAppPage> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppbar(),
      body: todayCheck(),
      bottomNavigationBar: NaviAppbar(),
    );
  }
}
