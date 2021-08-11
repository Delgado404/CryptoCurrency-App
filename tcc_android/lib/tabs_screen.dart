import 'package:flutter/material.dart';

class TabsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        child: Scaffold(
      appBar: AppBar(
        title: Text('OudriKandaLarrai'),
        bottom: TabBar(
          tabs: [
            Tab(icon: Icon(Icons.),),
          ],
        ),
      ),
    ));
  }
}
