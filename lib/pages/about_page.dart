// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'components/drawer_content.dart';

class AboutPage extends StatelessWidget {
  final String nomeBreno = 'Breno Zukowski';
  final String descricaoBreno =
      "21 anos. Desenvolvedor web frontend, trabalhando há 1 ano na área. Cursa Análise e Desenvolvimento de Sistemas na Fatec-RP. Músico, apaixonado por RPG, jogos eletrônicos e xadrez.";
  final String fotoBreno = 'assets/breno_dev.jpg';
  final String nomeJean = 'Jean Silva';
  final String descricaoJean =
      '19 anos. Desenvolvedor web frontend. Cursa Análise e Desenvolvimento de Sistemas na Fatec-RP. fã de e-sports e jogos eletrônicos.';
  final String fotoJean = 'assets/jean_dev.jpg';

  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Container(
        width: double.infinity,
        child: Drawer(
          child: DrawerContent(),
        ),
      ),
      appBar: AppBar(
        toolbarHeight: 80,
        centerTitle: true,
        title: Image.asset('assets/euler_logo.png'),
        backgroundColor: Color(0xfff4f4f4),
        iconTheme: IconThemeData(color: Color(0xff274378)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Text(
                'Sobre nós',
                style: TextStyle(
                    fontFamily: 'Lato',
                    decoration: TextDecoration.none,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff274378)),
              ),
            ),
            Container(
              width: double.infinity * 0.9,
              height: 4,
              margin: const EdgeInsets.all(20),
              color: Color(0xff274378),
            ),
            DevDescription(nomeBreno, descricaoBreno, fotoBreno),
            DevDescription(nomeJean, descricaoBreno, fotoJean),
          ],
        ),
      ),
    );
  }
}

class DevDescription extends StatelessWidget {
  final String name;
  final String description;
  final String image;

  const DevDescription(this.name, this.description, this.image, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 15.0),
            child: CircleAvatar(
              radius: 80,
              backgroundImage: NetworkImage(image),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 15.0),
            child: Text(
              name,
              style: TextStyle(
                fontFamily: 'Lato',
                decoration: TextDecoration.none,
                fontSize: 22,
                color: Color(0xff274378),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 5.0, bottom: 20.0),
            child: Padding(
              padding: EdgeInsets.only(right: 16.0, left: 16.0),
              child: Text(
                description,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Lato',
                  decoration: TextDecoration.none,
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
