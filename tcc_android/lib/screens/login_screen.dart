import 'dart:math';
import 'comparation_screen.dart';
import 'tabs_screen.dart';
import 'package:flutter/material.dart';
import 'package:tcc_android/main.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // provavel que vá ter que mudar isso aqui
      decoration: BoxDecoration(
          color: Color.fromRGBO(45, 49, 66, 1),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/backgroundTCC.png'))),
      child: Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.all(30)),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 40)),
              Text(
                'Login',
                style: TextStyle(
                  decoration: TextDecoration
                      .none, // aparentemente se tirar o text decoration none, fica com as linhas amarelas estranhas
                  fontFamily: 'Ebrima',
                  fontSize: 50,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(top: 200, left: 40)),
              RichText(
                  text: TextSpan(children: <TextSpan>[
                TextSpan(
                  text: 'Bem-vindo de volta, \n',
                  style: TextStyle(
                    fontFamily: 'Ebrima',
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ),
                TextSpan(
                  text: 'insira seu user e senha',
                  style: TextStyle(
                    fontFamily: 'Ebrima',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ])),
            ],
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 40)),
              Text(
                'email vem aqui',
                style: TextStyle(
                  fontFamily: 'Ebrima',
                  decoration: TextDecoration
                      .none, // aparentemente se tirar o text decoration none, fica com as linhas amarelas estranhas
                  fontSize: 20,
                  color: Colors.grey,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
