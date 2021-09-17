// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Column(
      children: [
        Column(children: [
          // LOGO
          Image.asset('assets/euler_logo.png'),

          // TELA INICIAL IMAGEM
          Image.asset('assets/telaInicial.png'),

          //PRIMEIRO TEXTO
          Container(
            margin: const EdgeInsets.only(top: 60.0),
            child: Text(
              'Aprenda o que quiser, não importa a hora ou lugar!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: 'Lato',
                color: Color(0xff274378),
                decoration: TextDecoration.none,
              ),
            ),
          ),

          // SEGUNDO TEXTO
          Container(
              margin: const EdgeInsets.only(bottom: 80.0, top: 20.0),
              child:
                  Text('A Euler Academy está disponível em diversos idiomas.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w100,
                        color: Color(0xff000000),
                        decoration: TextDecoration.none,
                      ))),

          // BOTÃO DE COMEÇAR
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding:
                  EdgeInsets.only(top: 20, bottom: 20, right: 30, left: 30),
              primary: Color(0xff1865f2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 15,
              shadowColor: Colors.black,
            ),
            child: Text(
              'Comece por aqui',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Lato',
                fontSize: 24,
              ),
            ),
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                  'login', (Route<dynamic> route) => false);
            },
          ),
        ])
      ],
    ));
  }
}
