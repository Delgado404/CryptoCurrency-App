import 'package:flutter/material.dart';
import 'package:tcc_android/screens/login_screen.dart';
import 'package:tcc_android/screens/welcome_screen.dart';
import 'package:tcc_android/screens/tutorial_screen.dart';
import 'screens/home_screen.dart';
import 'screens/comparation_screen.dart';
import 'screens/tutorial_screen.dart';
import 'screens/login_screen.dart';
import 'screens/tabs_screen.dart';
import 'dart:ffi';

void main() => runApp(MyHomePage());

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomeScreen(),
    );
  }
}

class MainPage extends StatefulWidget {
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;

  final pages = <Widget>[
    LoginScreen(),
    ComparationScreen(),
    WelcomeScreen(),
    tutorialscreen(),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        extendBody: true,
        body: pages[index],
        bottomNavigationBar: Tabsscreen(
          index: index,
          onChangedTab: onChangedTab,
        ),
      );

  void onChangedTab(int index) {
    setState(() {
      this.index = index;
    });
  }
}

class TutorialScreen {}
