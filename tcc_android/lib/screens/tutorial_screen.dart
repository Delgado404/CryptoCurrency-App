import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:tcc_android/components/body.dart';
import 'package:tcc_android/main.dart';
import 'tabs_screen.dart';

class tutorialscreen extends StatelessWidget {
  CarouselController buttonCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) => Column(children: <Widget>[
        CarouselSlider(
          items: [
            ListTile(
              title: Text(
                'Iniciante',
                style: TextStyle(fontSize: 42, height: 6, fontFamily: 'Ebrima'),
              ),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 80, horizontal: 50),
              subtitle: Text(
                  'Tenho nenhuma ou quase nenhuma experiência com cryptomoedas'),
            ),
            ListTile(
              title: Text(
                'Intermediário',
                style: TextStyle(fontSize: 42, height: 6, fontFamily: 'Ebrima'),
              ),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 80, horizontal: 50),
              subtitle: Text('Eu dou meus pulos'),
            ),
            ListTile(
              title: Text(
                'Avançado',
                style: TextStyle(fontSize: 42, height: 6, fontFamily: 'Ebrima'),
              ),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 80, horizontal: 50),
              subtitle:
                  Text('Vendo curso de como ficar rico sem sair de casa.'),
            ),
          ],
          carouselController: buttonCarouselController,
          options: CarouselOptions(
            aspectRatio: 2.0,
            height: 800,
            viewportFraction: 0.9,
            initialPage: 0,
            enableInfiniteScroll: true,
            autoPlay: true,
            reverse: true,
            autoPlayInterval: Duration(seconds: 5),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
          ),
        ),
      ]);
}
