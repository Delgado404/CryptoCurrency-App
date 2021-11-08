import 'package:flutter/material.dart';
import 'package:tcc_android/components/body.dart';

class transferencia extends StatelessWidget {
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
            margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 80),
            width: 320,
            height: 40,
            child: new Text(
              'Transferência',
              textAlign: TextAlign.center,
              style: new TextStyle(
                  fontSize: 40,
                  fontFamily: 'Ebrima',
                  fontWeight: FontWeight.bold),
            ),
          ),
          new Container(
            margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 0),
            padding: EdgeInsets.fromLTRB(20, 3, 2, 3),
            width: 320,
            height: 40,
            child: Row(
              children: [
                new Text(
                  'BTC',
                  style: new TextStyle(
                    fontSize: 30,
                    fontFamily: 'Ebrima',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(140, 1, 1, 1),
                  child: new Text(
                    'RS32,20',
                    style: new TextStyle(
                      fontSize: 20,
                      color: Colors.grey[700],
                    ),
                  ),
                )
              ],
            ),
          ),
          new Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
            width: 350,
            height: 50,
            child: Row(
              children: [
                Padding(padding: EdgeInsets.fromLTRB(0, 2, 5, 2)),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  width: 140,
                  height: 80,
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        hintText: 'Quanto', border: UnderlineInputBorder()),
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  width: 140,
                  height: 80,
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        hintText: 'Para quem?', border: UnderlineInputBorder()),
                  ),
                )
              ],
            ),
          ),
          new Container(
            margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            width: 160,
            height: 40,
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Prosseguir',
                style: TextStyle(color: Colors.green, fontSize: 20),
              ),
            ),
          ),
          new Container(
            margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
            width: 240,
            height: 50,
            child: new Text(
              'Histórico',
              textAlign: TextAlign.center,
              style: new TextStyle(
                  fontSize: 30,
                  fontFamily: 'Ebrima',
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800]),
            ),
          ),
          new Container(
            width: 320,
            height: 70,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(2, 0, 2, 2),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 5),
                      width: 150,
                      height: 60,
                      child: Text(
                        'João \n12/12/2021',
                        style: new TextStyle(
                          fontSize: 15,
                          fontFamily: 'Ebrima',
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(90, 0, 2, 2),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 5),
                      width: 150,
                      height: 60,
                      child: Text(
                        'RS14,00 \nBER',
                        style: new TextStyle(
                          fontSize: 15,
                          fontFamily: 'Ebrima',
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
