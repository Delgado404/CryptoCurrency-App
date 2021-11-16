import 'package:flutter/rendering.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';

import 'package:tcc_android/screens/carteira_screen.dart';
import 'package:tcc_android/screens/moedas_screen.dart';
import 'package:tcc_android/screens/tabs_screen.dart';
import 'package:tcc_android/screens/welcome_screen.dart';
import 'dart:async';

import '../main.dart';

class LoginScreen extends StatelessWidget {
  @override
  String email = '';
  String senha = '';
  String user = '';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        extendBody: true,
        resizeToAvoidBottomInset: false,
        body: Container(
          padding: EdgeInsets.fromLTRB(10, 0, 20, 0),
          decoration: BoxDecoration(
              color: Color.fromRGBO(45, 49, 66, 1),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/backgroundTCC.png'))),
          child: ListView(
            children: <Widget>[
              Padding(padding: EdgeInsets.all(30)),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 20)),
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
                  Padding(padding: EdgeInsets.only(top: 200, left: 20)),
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
                      text: 'insira seu email e senha',
                      style: TextStyle(
                        fontFamily: 'Ebrima',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ])),
                ],
              ),
              SizedBox(
                width: 350,
                child: TextField(
                  onChanged: (text) {
                    email = text;
                  },
                  //text field do email
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Color.fromRGBO(252, 107, 18, 1),
                    )),
                    hintStyle: TextStyle(color: Colors.white),
                    icon: Icon(
                      Icons.person,
                      color: Color.fromRGBO(252, 107, 18, 1),
                    ),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Color.fromRGBO(252, 107, 18, 1),
                    )),
                    labelText: 'Email ou usuário',
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 350,
                child: TextField(
                  onChanged: (text) {
                    senha = text;
                  },
                  //text field da senha
                  obscureText: true,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Color.fromRGBO(252, 107, 18, 1),
                    )),
                    hintStyle: TextStyle(color: Colors.white),
                    suffixIcon: Icon(Icons.visibility,
                        color: Color.fromRGBO(252, 107, 18, 1)),
                    icon: Icon(
                      Icons.vpn_key,
                      color: Color.fromRGBO(252, 107, 18, 1),
                    ),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Color.fromRGBO(252, 107, 18, 1),
                    )),
                    labelText: 'Senha',
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(40)),
              SizedBox(
                height: 50,
                width: 150,
                child: TextButton(
                  onPressed: () {
                    if (email == 'admin@flutter.com' ||
                        user == 'admin' && senha == '123') {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MainPage()));
                    } else {
                      AlertDialog alert = AlertDialog(
                        backgroundColor: Color.fromRGBO(80, 102, 140, 1),
                        title: Text(
                          'Erro',
                          style:
                              TextStyle(color: Color.fromRGBO(252, 107, 18, 1)),
                        ),
                        content: Text('Email ou senha incorreto',
                            style: TextStyle(color: Colors.white)),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              'no',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              'yes',
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      );
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return alert;
                        },
                      );
                    }
                  },
                  child: Text(
                    'Entrar',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0))),
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromRGBO(252, 107, 18, 1))),
                ),
              )
            ],
          ),
        ));
  }
}
