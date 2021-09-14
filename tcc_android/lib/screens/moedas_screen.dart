import 'package:tcc_android/main.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:tcc_android/components/body.dart';
import 'package:tcc_android/main.dart';
import 'tabs_screen.dart';
import 'tutorial_screen.dart';

class Moeda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height,
      decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/backgroundTCC.png'))),
      alignment: Alignment.topCenter,
      child: new Stack(children: [
        new Container(
          alignment: Alignment.topCenter,
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 100),
          width: 350.0,
          height: 180.0,
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: new Text('Bitcoin',
              style: new TextStyle(
                fontSize: 30,
                fontFamily: 'Ebrima',
                color: Colors.black,
                fontWeight: FontWeight.bold,
              )),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 144, vertical: 150),
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/logo_laranja.png'))),
        ),
        Container(
            margin: const EdgeInsets.symmetric(horizontal: 225, vertical: 130),
            width: 40,
            height: 40,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: new Icon(Icons.star_border)),
        Container(
            child: new Text(
              'BTC',
              style: new TextStyle(
                fontSize: 20,
              ),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 300),
            width: 300,
            height: 30,
            padding: EdgeInsets.symmetric(horizontal: 0),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
              width: 1,
              color: Colors.grey,
            )))),
        Container(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: new Text(
              'Lorem ipsum \n Lorem ipsum \n Lorem ipsum \n Lorem ipsum \n Lorem ipsum',
              textAlign: TextAlign.center,
              style: new TextStyle(
                fontSize: 18,
              ),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 330),
            width: 300,
            height: 200,
            decoration: BoxDecoration(
                border:
                    Border(bottom: BorderSide(width: 1, color: Colors.grey)))),
      ]),
    );
  }
}
