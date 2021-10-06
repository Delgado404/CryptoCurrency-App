import 'dart:math';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarteiraScreen extends StatelessWidget {
  @override
  numberGenerator() {
    var rng = new Random();
    double valor;

    valor = (rng.nextInt(100) + (rng.nextInt(99) / 100));

    if (rng.nextInt(2) == 1)
      return '+' + valor.toString() + '%';
    else
      return '-' + valor.toString() + '%';
  }

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
      child: new Column(
        children: [
          new Container(
            margin: const EdgeInsets.symmetric(horizontal: 35, vertical: 80),
            width: 320,
            height: 40,
            child: new Text('Carteira', // o + é o botão pra esconder
                textAlign: TextAlign.center,
                style: new TextStyle(
                    fontSize: 40,
                    fontFamily: 'Ebrima',
                    fontWeight: FontWeight.bold)),
          ),
          new Container(
            width: 200,
            height: 50,
            child: new Text(
              'Criptos rendendo',
              textAlign: TextAlign.center,
              style: new TextStyle(
                  fontSize: 25,
                  fontFamily: 'Ebrima',
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
          ),
          CarouselSlider(
            options: CarouselOptions(
              height: 140,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 5),
              autoPlayAnimationDuration: Duration(milliseconds: 1000),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
            ),
            items: [
              Text(
                'BTC \n' + numberGenerator().toString(),
                style: new TextStyle(
                  fontSize: 20,
                  fontFamily: 'Ebrima',
                ),
              ),
              Text(
                'ETC \n' + numberGenerator().toString(),
                style: new TextStyle(
                  fontSize: 20,
                  fontFamily: 'Ebrima',
                ),
              ),
              Text(
                'POG \n' + numberGenerator().toString(),
                style: new TextStyle(
                  fontSize: 20,
                  fontFamily: 'Ebrima',
                ),
              ),
            ],
          ),
          new Container(
              width: 200,
              height: 50,
              child: new Text(
                'Mais Rentáveis',
                textAlign: TextAlign.center,
                style: new TextStyle(
                    fontSize: 25,
                    fontFamily: 'Ebrima',
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              )),
          CarouselSlider(
            options: CarouselOptions(
              height: 140,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 5),
              autoPlayAnimationDuration: Duration(milliseconds: 1000),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
            ),
            items: [
              Text(
                'BTC \n' + numberGenerator().toString(),
                style: new TextStyle(
                  fontSize: 20,
                  fontFamily: 'Ebrima',
                ),
              ),
              Text(
                'ETC \n' + numberGenerator().toString(),
                style: new TextStyle(
                  fontSize: 20,
                  fontFamily: 'Ebrima',
                ),
              ),
              Text(
                'POG \n' + numberGenerator().toString(),
                style: new TextStyle(
                  fontSize: 20,
                  fontFamily: 'Ebrima',
                ),
              ),
            ],
          ),
          new Container(
              width: 200,
              height: 50,
              child: new Text(
                'Histórico',
                textAlign: TextAlign.center,
                style: new TextStyle(
                    fontSize: 25,
                    fontFamily: 'Ebrima',
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              )),
        ],
      ),
    );
  }
}
