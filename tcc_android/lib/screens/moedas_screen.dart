import 'package:flutter/material.dart';
import 'package:tcc_android/components/line_chart.dart';
import 'package:tcc_android/components/line_chart2.dart';
import 'package:tcc_android/components/line_chart3.dart';
import 'package:tcc_android/components/line_chart4.dart';

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
            _Moeda(),
          ],
        ));
  }
}

class _Moeda extends StatefulWidget {
  @override
  __MoedaState createState() => __MoedaState();
}

class __MoedaState extends State<_Moeda> {
  String dropdownValue = "BTC";
  _renderWidget() {
    print(dropdownValue);
    switch (dropdownValue) {
      case "BTC":
        {
          return LineChartWidget();
        }
      case "ETH":
        {
          return LineChartWidget2();
        }
      case "POG":
        {
          return LineChartWidget3();
        }
      case "CDP":
        {
          return LineChartWidget4();
        }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            padding: EdgeInsets.fromLTRB(20, 10, 270, 0),
            child: DropdownButton<String>(
              underline: Container(
                height: 2,
                color: Colors.deepOrangeAccent,
              ),
              value: dropdownValue,
              icon: Icon(Icons.arrow_downward),
              onChanged: (String? claudio) {
                switch (claudio) {
                  case 'BTC':
                    setState(() {
                      dropdownValue = 'BTC';
                    });
                    break;
                  case 'ETH':
                    setState(() {
                      dropdownValue = 'ETH';
                    });
                    break;
                  case 'POG':
                    setState(() {
                      dropdownValue = 'POG';
                    });
                    break;
                  case 'CDP':
                    setState(() {
                      dropdownValue = 'CDP';
                    });
                    break;
                }
              },
              items: <String>['BTC', 'ETH', 'POG', 'CDP']
                  .map<DropdownMenuItem<String>>((String dropdownValue) {
                return DropdownMenuItem<String>(
                  value: dropdownValue,
                  child: Text(dropdownValue),
                );
              }).toList(),
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
                child: _renderWidget(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
