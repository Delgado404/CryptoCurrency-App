import 'package:flutter/material.dart';
import 'package:tcc_android/components/formulario.dart';
import 'package:tcc_android/components/historico.dart';
import 'package:tcc_android/models/dados_historico.dart';

class transferencia extends StatefulWidget {
  @override
  _transferenciaState createState() => _transferenciaState();
}

class _transferenciaState extends State<transferencia> {
  final historico = [
    DadosHistorico(
      nome: 'Pedro',
      valor: 152.56,
      data: DateTime.now(),
    ),
    DadosHistorico(
      nome: 'Guilherme',
      valor: 278.12,
      data: DateTime.now(),
    ),
  ];

  _addTransferencia(String nome, double valor) {
    final newDadosHistorico = DadosHistorico(
      nome: nome,
      valor: valor,
      data: DateTime.now(),
    );

    setState(() {
      historico.add(newDadosHistorico);
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
            Formulario(_addTransferencia),
          ],
        ));
  }
}
