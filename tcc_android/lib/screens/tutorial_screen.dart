import 'package:flutter/material.dart';

class TutorialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: <Widget>[
      Card(
        elevation: 5,
        margin: EdgeInsets.symmetric(
          vertical: 3,
          horizontal: 5,
        ),
        child: ExpansionTile(
            leading: Image.asset('assets/images/logo_laranja.png'),
            title: Text('Tutorial Introdutório'),
            subtitle: Text('Leia mais'),
            children: <Widget>[
              Text(
                'pipipopo',
              ),
            ]),
      ),
      Card(
        elevation: 5,
        margin: EdgeInsets.symmetric(
          vertical: 3,
          horizontal: 5,
        ),
        child: ExpansionTile(
            leading: Image.asset('assets/images/logo_laranja.png'),
            title: Text('Tutorial Intermediario'),
            subtitle: Text('Leia mais'),
            children: <Widget>[
              Text('- pipipopo'),
              Text('- pipipopo'),
              Text('- pipipopo'),
            ]),
      ),
      Card(
        elevation: 5,
        margin: EdgeInsets.symmetric(
          vertical: 3,
          horizontal: 5,
        ),
        child: ExpansionTile(
            leading: Image.asset('assets/images/logo_laranja.png'),
            title: Text('Tutorial Avançado'),
            subtitle: Text('Leia mais'),
            children: <Widget>[
              Text('- pipipopo'),
              Text('- pipipopo'),
              Text('- pipipopo'),
            ]),
      ),
      Card(
        elevation: 5,
        margin: EdgeInsets.symmetric(
          vertical: 3,
          horizontal: 5,
        ),
        child: ExpansionTile(
            leading: Image.asset('assets/images/logo_laranja.png'),
            title: Text('Glossário'),
            subtitle: Text('Leia mais'),
            children: <Widget>[
              Text('- pipipopo'),
              Text('- pipipopo'),
              Text('- pipipopo'),
            ]),
      ),
    ]));
  }
}
