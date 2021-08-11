import 'package:flutter/material.dart';
void main() => runApp(TCChomepage());




  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          canvasColor: Color.fromRGBO(231, 236, 239, 1),
          primaryColor: Color.fromRGBO(252, 186, 3, 1),
        ),
        title: 'Virtua\'let',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Virtua\'let'),
          ),
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/backgroundTCC.png")),
            ),
          ),
        ));
  }
}
