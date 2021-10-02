// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'components/drawer_widget.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
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
          child: (Column(children: [
            Container(
                margin: EdgeInsets.only(top: 30),
                child: Text(
                  'Matérias',
                  style: TextStyle(
                      fontFamily: 'Lato',
                      decoration: TextDecoration.none,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff274378)),
                )),
            Container(
              width: double.infinity * 0.9,
              height: 4,
              margin: const EdgeInsets.all(20),
              color: Color(0xff274378),
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
                            SizedBox(child: Image.asset('assets/historia.png')),
                            Text(
                              'História',
                              style: TextStyle(
                                  color: Color(0xff274378),
                                  fontSize: 20,
                                  decoration: TextDecoration.none),
                            )
                          ],
                        )),
                    Container(
                        margin: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            SizedBox(
                                child: Image.asset('assets/geografia.png')),
                            Text(
                              'Geografia',
                              style: TextStyle(
                                  color: Color(0xff274378),
                                  fontSize: 20,
                                  decoration: TextDecoration.none),
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
                                child: Image.asset('assets/matematica.png')),
                            Text(
                              'Matemática',
                              style: TextStyle(
                                  color: Color(0xff274378),
                                  fontSize: 20,
                                  decoration: TextDecoration.none),
                            )
                          ],
                        )),
                    Container(
                        margin: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            SizedBox(child: Image.asset('assets/fisica.png')),
                            Text(
                              'Física',
                              style: TextStyle(
                                  color: Color(0xff274378),
                                  fontSize: 20,
                                  decoration: TextDecoration.none),
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
                            SizedBox(child: Image.asset('assets/quimica.png')),
                            Text(
                              'Química',
                              style: TextStyle(
                                  color: Color(0xff274378),
                                  fontSize: 20,
                                  decoration: TextDecoration.none),
                            )
                          ],
                        )),
                    Container(
                        margin: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            SizedBox(
                                child: Image.asset('assets/filosofia.png')),
                            Text(
                              'Filosofia',
                              style: TextStyle(
                                  color: Color(0xff274378),
                                  fontSize: 20,
                                  decoration: TextDecoration.none),
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
