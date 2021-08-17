import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'comparation_screen.dart';
import 'tutorial_screen.dart';

class TabsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('OudriKandaLarrai'),
            bottom: TabBar(
              tabs: [
                Tab(
                  text: 'Home',
                  icon: Icon(
                    Icons.monetization_on_outlined,
                  ),
                ),
                Tab(
                  text: 'Tutorial',
                  icon: Icon(
                    Icons.book_outlined,
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
          ),
          body: TabBarView(
            children: [
              HomeScreen(),
              ComparationScreen(),
              TutorialScreen(),
            ],
          ),
        ));
  }
}
