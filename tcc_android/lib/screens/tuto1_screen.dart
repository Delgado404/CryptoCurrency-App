import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/rendering.dart';
import 'package:tcc_android/main.dart';
import 'iniciante_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'tutorial_screen.dart';

class tuto1 extends StatelessWidget {
  @override
  final controller = PageController(viewportFraction: 1, keepPage: true);

  Widget build(BuildContext context) {
    final list = [
      Container(
        padding: const EdgeInsets.only(top: 120.0),
        decoration: BoxDecoration(),
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 70),
        child: Column(
          children: <Widget>[
            ListTile(
              title: const Text(
                'Vamos começar!',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Ebrima',
                    fontSize: 30,
                    color: Colors.orange,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'A seguir, vamos explicar como começar nesse meio, desde o que são as tão faladas criptomoedas até como ter sua própria carteira virutal.',
                textAlign: TextAlign.center,
                style: TextStyle(fontFamily: 'Ebrima', fontSize: 15),
              ),
            )
          ],
        ),
      ),
      Container(
        padding: const EdgeInsets.only(top: 120.0),
        decoration: BoxDecoration(),
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 70),
        child: Column(
          children: <Widget>[
            ListTile(
              title: const Text(
                'O que são as criptos?',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Ebrima',
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'As criptomoedas são códigos criptografados que possuem valores monetários variáveis, ou seja, podem subir ou descer de preço. Elas também podem ser centralizadas ou não, e são validadas pela blockchain. Alguns exemplos que podemos citar são a Bitcoin, Ethereum, Ada entre outras.',
                textAlign: TextAlign.center,
                style: TextStyle(fontFamily: 'Ebrima', fontSize: 15),
              ),
            )
          ],
        ),
      ),
      Container(
        padding: const EdgeInsets.only(top: 120.0),
        decoration: BoxDecoration(),
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 70),
        child: Column(
          children: <Widget>[
            ListTile(
              title: const Text(
                'Blockchain e transações',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Ebrima',
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'A Blockchain é um sistema que permite a realização de transações de criptomoedas. São pedaços de código gerados online que carregam informações conectadas, como uma cadeia de blocos que contém dados. Falando de forma simples, ela funciona como um livro de registros, a qual insere qualquer transferência ou troca feita. Assim, ela rastreia e verifica o caminho que uma criptomoeda percorre, o que garante a segurança do processo de compra, venda ou troca.',
                textAlign: TextAlign.center,
                style: TextStyle(fontFamily: 'Ebrima', fontSize: 15),
              ),
            )
          ],
        ),
      ),
      Container(
        padding: const EdgeInsets.only(top: 120.0),
        decoration: BoxDecoration(),
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 70),
        child: Column(
          children: <Widget>[
            ListTile(
              title: const Text(
                'E como ganho dinheiro?',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Ebrima',
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Qualquer um pode ganhar dinheiro realizando transações de criptomoedas. Como o valor de cada moeda flutua, existe o momento certo para lucrar na compra e venda da mesma. Por isso, é preciso ficar atento com os preços variando, para comprar as moedas com o preço menor e vender com o maior preço. Além disso, você pode usar algumas criptomoedas para fazer compras em certas empresas ou até mesmo países. Também há a mineração de criptomoedas, que exige alguns componentes mais potentes em quesito de hardware.',
                textAlign: TextAlign.center,
                style: TextStyle(fontFamily: 'Ebrima', fontSize: 15),
              ),
            )
          ],
        ),
      ),
      Container(
        padding: const EdgeInsets.only(top: 120.0),
        decoration: BoxDecoration(),
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 70),
        child: Column(
          children: <Widget>[
            ListTile(
              title: const Text(
                'A carteira',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Ebrima',
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Você pode acessar as moedas que tem interesse pela sua carteira, onde é possível ver a quantidade de uma moeda que você possui, o valor atual delas e a variação do preço em porcentagem nas últimas horas. Você também terá acesso a um gráfico para observar essa variação. É recomendado que analise bem o gráfico antes de comprar ou vender uma moeda. Fique atento nas notícias, as quais você pode declarar moedas de seu interesse, e assim, será indicado notícias que influenciam em algo relacionado a moeda. Preste atenção, porque mesmo coisas simples podem alterar o valor de moedas.',
                textAlign: TextAlign.center,
                style: TextStyle(fontFamily: 'Ebrima', fontSize: 15),
              ),
            ),
            TextButton(
                onPressed: () {
                  // faz o botão dar na pag de login, tirei ela do menu, mas a inicial precisa levar pra ela de volta
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MainPage()));
                },
                child: Text(
                    'Entendi!', // da pra trocar por um botão depois, não sei oq fica melhor aqui
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    )))
          ],
        ),
      ),
    ];
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 16),
              SizedBox(
                height: 700,
                child: PageView.builder(
                  controller: controller,
                  itemBuilder: (_, index) {
                    return list[index % list.length];
                  },
                ),
              ),
              SmoothPageIndicator(
                controller: controller,
                count: list.length,
                effect: SlideEffect(
                    dotHeight: 10, dotWidth: 10, activeDotColor: Colors.orange),
              )
            ],
          ),
        ),
      ),
    );
  }
}
