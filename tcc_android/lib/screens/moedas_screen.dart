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
          new Container(
            margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 80),
            width: 320,
            height: 40,
            child: Text('Moedas',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 40,
                    fontFamily: 'Ebrima',
                    fontWeight: FontWeight.bold)),
          ),
          new Container(
              padding: EdgeInsets.fromLTRB(20, 10, 270, 0),
              child: DropdownButton<String>(
                items: <String>['BTC', 'B', 'C'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (_) {},
              )),
          Container(
            padding: EdgeInsets.fromLTRB(40, 0, 10, 0),
            child: SizedBox(
              height: 300,
              width: 500,
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
                color: const Color(0x00000000),
                child: Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: LineChartWidget(),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
