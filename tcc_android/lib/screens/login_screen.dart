import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromRGBO(45, 49, 66, 1),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/backgroundTCC.png'))),
      child: Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.all(20)),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 40)),
              Text(
                'Login',
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            children: [
              RichText(
                  text: TextSpan(children: <TextSpan>[
                TextSpan(text: 'Bem-vindo de volta,'),
              ])),
            ],
          )
        ],
      ),
    );
  }
}
