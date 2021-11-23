import 'package:flutter/material.dart';

class Formulario extends StatelessWidget {
  final void Function(String, double) _onSubmit;
  Formulario(this._onSubmit);

  final nomeController = TextEditingController();
  final valorController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          width: 140,
          height: 80,
          child: TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
                hintText: 'Quanto', border: UnderlineInputBorder()),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          width: 140,
          height: 80,
          child: TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
                hintText: 'Para quem?', border: UnderlineInputBorder()),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
          width: 350,
          height: 50,
          child: Row(
            children: [
              Padding(padding: EdgeInsets.fromLTRB(0, 2, 5, 2)),
            ],
          ),
        ),
        Container(
          color: Colors.black,
          margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          width: 160,
          height: 40,
          child: TextButton(
            onPressed: () {
              final nome = nomeController.text;
              final valor = double.tryParse(valorController.text) ?? 0.0;
              _onSubmit(nome, valor);
            },
            child: Text(
              'Prosseguir',
              style: TextStyle(color: Colors.green, fontSize: 20),
            ),
          ),
        ),
      ],
    );
  }
}
