// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'components/drawer_content.dart';

class Filosofia extends StatefulWidget {
  const Filosofia({Key? key}) : super(key: key);

  @override
  State<Filosofia> createState() => _FilosofiaState();
}

class _FilosofiaState extends State<Filosofia> {
  //Índice da página que será carregada inicialmente
  var telaAtual = 0;

  //Controlador utilizado para troca das telas (páginas)
  var pageController = PageController();

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
        child: Container(
          color: Color(0xff274378),
          child: (Column(children: [
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Text(
                'Aulas Gravadas - Filosofia',
                style: TextStyle(
                    fontFamily: 'Lato',
                    decoration: TextDecoration.none,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffffffff)),
              ),
            ),
            Container(
              width: double.infinity * 0.9,
              height: 4,
              margin: const EdgeInsets.all(20),
              color: Color(0xffffffff),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        margin: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            SizedBox(child: Image.asset('assets/aula_gravada.png')),
                            TextButton(
                              onPressed: () {
                                
                              },
                              child: SizedBox(
                                  width: 120,
                                  child: Text('Idealismo - 23/05',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Color(0xffffffff),
                                          fontSize: 20,
                                          decoration: TextDecoration.none))),
                            )
                          ],
                        )),
                    Container(
                        margin: EdgeInsets.only(
                            top: 10.0, bottom: 10.0, left: 10.0),
                        child: Column(
                          children: [
                            SizedBox(
                                child: Image.asset('assets/aula_gravada.png')),
                            TextButton(
                              onPressed: () {
                                
                              },
                              child: SizedBox(
                                width: 120,
                                child: Text('Racionalismo - 24/05',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color(0xffffffff),
                                        fontSize: 20,
                                        decoration: TextDecoration.none)),
                              ),
                            )
                          ],
                        ))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        margin: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            SizedBox(
                                child: Image.asset('assets/aula_gravada.png')),
                            TextButton(
                              onPressed: () {
                                
                              },
                              child: SizedBox(
                                  width: 120,
                                  child: Text('Humanismo - 18/04',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Color(0xffffffff),
                                          fontSize: 20,
                                          decoration: TextDecoration.none))),
                            )
                          ],
                        )),
                    Container(
                        margin: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            SizedBox(child: Image.asset('assets/aula_gravada.png')),
                            TextButton(
                              onPressed: () {

                              },
                              child: SizedBox(
                                width: 120,
                                child: Text('Escola de Frankfurt - 16/05',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color(0xffffffff),
                                        fontSize: 20,
                                        decoration: TextDecoration.none)),
                              ),
                            )
                          ],
                        ))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        margin: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            SizedBox(child: Image.asset('assets/aula_gravada.png')),
                            TextButton(
                              onPressed: () {
                                
                              },
                              child: SizedBox(
                                width: 120,
                                child: Text('Renascimento - 04/03',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color(0xffffffff),
                                        fontSize: 20,
                                        decoration: TextDecoration.none)),
                              ),
                            )
                          ],
                        )),
                    Container(
                        margin: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            SizedBox(
                                child: Image.asset('assets/aula_gravada.png')),
                            TextButton(
                              onPressed: () {
                                
                              },
                              child: SizedBox(
                                width: 120,
                                child: Text('Filosofia Medieval - 02/01',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color(0xffffffff),
                                        fontSize: 20,
                                        decoration: TextDecoration.none)),
                              ),
                            )
                          ],
                        ))
                  ],
                ),
                SizedBox(
                  width: 300,
                  child: Container(
                    margin: EdgeInsets.only(top: 40, bottom: 40),
                    child: Material(
                        elevation: 20.0,
                        shadowColor: Colors.black45,
                        borderRadius: BorderRadius.circular(20),
                        child: TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.search),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0)),
                              filled: true,
                              hintStyle: TextStyle(color: Color(0xffABA4A4)),
                              hintText: "Pesquisar por algo específico",
                              fillColor: Color(0xffffffff)),
                        )),
                  ),
                )
              ],
            )
          ])),
        ),
      ),
    );
  }
}
