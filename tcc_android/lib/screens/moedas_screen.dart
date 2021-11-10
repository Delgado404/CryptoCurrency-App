import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:tcc_android/components/line_chart.dart';

class Moeda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/backgroundTCC.png'))),
      child: Column(
        children: [
          SizedBox(
            height: 70,
          ),
          Text('Moedas',
              style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Ebrima',
                  fontWeight: FontWeight.bold)),
          SizedBox(
            height: 50,
          ),
          Text('Bitcoin',
              style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Ebrima',
                  fontWeight: FontWeight.bold)),
          SizedBox(
            height: 300,
            width: 1000,
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32),
              ),
              color: const Color(0xff020227),
              child: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: LineChartWidget(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
