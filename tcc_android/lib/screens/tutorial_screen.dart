import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:tcc_android/main.dart';
import 'package:tcc_android/screens/tuto2_screen.dart';
import 'iniciante_screen.dart';
import 'tuto1_screen.dart';
import 'tuto2_screen.dart';

class tutorialscreen extends StatelessWidget {
  // vou marcar onde os botões estão, de resto, só mexe pra mudar o texto
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
      child: CarouselSlider(
        options: CarouselOptions(
          height: 400.0,
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
          Builder(builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: const Text('Iniciante',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Ebrima',
                            fontSize: 39,
                            fontWeight: FontWeight.bold)),
                    subtitle: Text(
                      'Lorem Ipsum',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Ebrima',
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 100.0),
                    child: FloatingActionButton(
                      backgroundColor: Colors.orange,
                      onPressed: () {
                        // botão aq
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => tuto1()));
                      },
                    ),
                  )
                ],
              ),
            );
          }),
          Builder(builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: const Text('Intermediário',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Ebrima',
                            fontSize: 39,
                            fontWeight: FontWeight.bold)),
                    subtitle: Text(
                      'Lorem ipsum',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Ebrima',
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 100.0),
                    child: FloatingActionButton(
                      backgroundColor: Colors.orange,
                      onPressed: () {
                        // botão aq
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => tuto2()));
                      },
                    ),
                  )
                ],
              ),
            );
          }),
          Builder(builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: const Text('Tutorial',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Ebrima',
                            fontSize: 39,
                            fontWeight: FontWeight.bold)),
                    subtitle: Text(
                      'Selecione uma dificuldade para começar a aprender!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Ebrima',
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
        ],
      ),
    );
  }
}
