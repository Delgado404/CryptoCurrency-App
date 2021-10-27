import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/rendering.dart';
import 'package:tcc_android/main.dart';
import 'iniciante_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'tutorial_screen.dart';

class tuto2 extends StatelessWidget {
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
                'Riscos, golpes e segurança.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Ebrima',
                    fontSize: 30,
                    color: Colors.orange,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Agora, vamos explicar os cuidados que devem ser tomados quando falamos sobre criptomoedas e carteiras virtuais.',
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
                'Cuidado com as carteiras falsas!',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Ebrima',
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Existem várias formas de golpe que envolvem criptomoedas, por isso é necessário estar atento ao que for fazer. Um exemplo são as carteiras falsas. As carteiras foram feitas para “guardar” suas criptomoedas de forma segura. Apesar de serem programadas com essa finalidade, existem ainda as falsas, que tem acesso a seus dados registrados, desde os pessoais até suas economias. Para evitar esse tipo de problema, basta evitar aplicativos recém-lançados e desconhecidos. Procure usar plataformas conhecidas e populares, além de avaliações de fontes seguras e recomendações.',
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
                'Pishing',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Ebrima',
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Também existem golpes diretos, como phishing. Esse golpe se baseia em uma forma de roubar seus dados a partir de um “bait”. Esse termo é utilizado por causa da forma que agem. Eles criam uma “isca” para você ser enganado e compartilhar seus dados, podendo ser a partir de um e-mail se passando pela empresa da carteira ou da criptomoeda, ou por uma pessoa que você conheça. Por isso, não abra nenhum link ou e-mail suspeito, nem coloque os seus dados sem saber se a fonte é segura, e sempre desconfie desses meios.',
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
                'Esquema de pirâmede',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Ebrima',
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Esse golpe funciona da seguinte forma: um grupo de pessoas passa a comercializar uma nova moeda, com uma promessa de que ela irá valorizar e o ideal seria comprá-la agora. Com isso, eles conseguem trazer novas pessoas que pagam o valor para terem essa moeda, enquanto essas vítimas divulgam ainda mais essa moeda e trazem ainda mais vítimas para o esquema. No fim, os únicos que realmente lucram são aqueles que estavam no topo da pirâmide, já que para entrar no esquema, deve se aplicar dinheiro, enquanto os outros vão perdendo o dinheiro investido. Para se prevenir desses esquemas, tente não se arriscar com moedas muito pequenas ou baratas, mas caso queira arriscar, cuidado com essas moedas recém-lançadas, e caso se envolva com um desses projetos, peça uma autenticação como o ”whitepaper”.',
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
                'Dumping',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Ebrima',
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "Um dos golpes mais complexos, o Pump&Dump funciona de uma forma parecido com o anterior. Uma empresa cria uma moeda com preço baixo, sendo essa legal e registrada. Assim, ela cria uma onda de investimentos, mas quando a moeda chega em seu ápice, os investidores vendem toda a sua parte e abandonam o projeto, fazendo com que os que investiram percam dinheiro. Ele se torna complexo por ser difícil de prever e de identificar, por isso é importante evitar moedas novas caso não queira se arriscar, mesmo com promessas de valorização. Porém, caso ainda ache que possa lucrar com essas moedas, comece com valores pequenos ou médios em moedas menos recentes.",
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
                'Como se manter seguro & whitepaper',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Ebrima',
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'As melhores formas de manter suas criptomoedas seguras é investir numa corretora de confiança e conhecida. Também pode deixar suas moedas numa carteira própria, conhecida como "hardware-wallet", uma espécie de pen-drive. É recomendado deixar suas moedas na corretora apenas se decidir negociar ou fazer transações. \n As melhores formas de manter suas criptomoedas seguras é investir numa corretora de confiança e conhecida. Também pode deixar suas moedas numa carteira própria, conhecida como "hardware-wallet", uma espécie de pen-drive. É recomendado deixar suas moedas na corretora apenas se decidir negociar ou fazer transações.',
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
