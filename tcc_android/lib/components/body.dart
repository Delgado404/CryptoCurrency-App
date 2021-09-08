import 'package:tcc_android/main.dart';
import 'package:tcc_android/screens/tabs_screen.dart';
import 'package:tcc_android/screens/welcome_screen.dart';
import '../screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'dart:ffi';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      decoration: BoxDecoration(
          color: Color.fromRGBO(45, 49, 66, 1),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/backgroundTCC.png'))),
      child: (Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(),
          SizedBox(
            width: 200,
            child: Image(
              image: AssetImage('assets/images/logo_branco.png'),
            ),
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(children: <TextSpan>[
              TextSpan(
                  text: 'Virtua',
                  style: TextStyle(
                      color: Color.fromRGBO(252, 107, 18, 1),
                      fontWeight: FontWeight.bold,
                      fontSize: 80)),
              TextSpan(
                  text: '\'',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 80)),
              TextSpan(
                  text: 'let',
                  style: TextStyle(
                      color: Color.fromRGBO(156, 159, 161, 1),
                      fontWeight: FontWeight.bold,
                      fontSize: 80))
            ]),
          ),
          Text(
            'Frase de efeito',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
          Padding(padding: EdgeInsets.all(50)),
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MainPage()));
              },
              child: Text('Continuar',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  )))
        ],
      )),
    );
  }
}
