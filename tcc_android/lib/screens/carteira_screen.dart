import '../utils/rng.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Carteira extends StatefulWidget {
  CarteiraScreen createState() => CarteiraScreen();
}

class CarteiraScreen extends State<Carteira> {
  bool _visible = true;

  void _toggle() {
    setState(() {
      _visible = !_visible;
    });
  }

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
      child: new Column(
        children: [
          new Container(
            margin: const EdgeInsets.fromLTRB(0, 80, 0, 10),
            width: 320,
            height: 40,
            child: new Text('Carteira', // o + é o botão pra esconder
                textAlign: TextAlign.center,
                style: new TextStyle(
                    fontSize: 40,
                    fontFamily: 'Ebrima',
                    fontWeight: FontWeight.bold)),
          ),
          new Row(
            children: [
              new Container(
                margin: const EdgeInsets.fromLTRB(0, 60, 0, 90),
                width: 270,
                height: 60,
                child: new Visibility(
                    visible: _visible,
                    child: Text(
                      'RS320,00',
                      textAlign: TextAlign.center,
                      style: new TextStyle(fontSize: 30, fontFamily: 'Ebrima'),
                    )),
              ),
              new Container(
                  margin: const EdgeInsets.fromLTRB(0, 2, 0, 60),
                  child: IconButton(
                      onPressed: _toggle, icon: Icon(Icons.visibility)))
            ],
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
        ],
      ),
    );
  }
}
