import 'dart:html';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:tcc_android/components/body.dart';
import 'package:tcc_android/main.dart';
import 'tabs_screen.dart';
import 'tutorial_screen.dart';

class iniciante extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Iniciante',
      home: Scaffold(
          appBar: AppBar(
              title: const Text(
            'Iniciante',
            style: TextStyle(
              fontFamily: 'Ebrima',
            ),
          )),
          body: const Center(
            child: Text('Lorem Ipsum'),
          )),
    );
  }
}
