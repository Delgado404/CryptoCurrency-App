import 'package:flutter/material.dart';
import 'package:tcc_android/screens/welcome_screen.dart';
import 'screens/home_screen.dart';
import 'screens/comparation_screen.dart';
import 'screens/tutorial_screen.dart';

void main() => runApp(MyHomePage());

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomeScreen(),
    );
  }
}

class TabsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(239, 119, 28, 1),
          bottom: TabBar(
            tabs: [
              Tab(
                text: 'Tutorial',
                icon: Icon(
                  Icons.book_outlined,
                ),
              ),
              Tab(
                text: 'Home',
                icon: Icon(
                  Icons.monetization_on_outlined,
                ),
              ),
              Tab(
                text: 'Comparation',
                icon: Icon(
                  Icons.bar_chart_rounded,
                ),
              ),
            ],
          ),
          title: Text('OudriKandaLarrai'),
        ),
        body: TabBarView(
          children: [
            TutorialScreen(),
            HomeScreen(),
            ComparationScreen(),
          ],
        ),
      ),
    );
  }
}
