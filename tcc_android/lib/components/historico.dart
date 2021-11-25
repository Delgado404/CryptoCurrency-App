import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tcc_android/models/dados_historico.dart';

class Historico extends StatelessWidget {
  final List<DadosHistorico> dados_historico;
  Historico(this.dados_historico);

  @override
  Widget build(BuildContext context) {
    Container(
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
    );
    return Column(
      children: dados_historico.map((hist) {
        return Container(
          width: 370,
          child: Card(
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    hist.nome,
                    style: TextStyle(fontFamily: 'Ebrima', fontSize: 17),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      hist.valor.toString(),
                      style: TextStyle(
                          fontFamily: 'Ebrima',
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(DateFormat('dd/MM/yyyy').format(hist.data)),
                  ],
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
