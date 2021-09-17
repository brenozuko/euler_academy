import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// ignore_for_file: prefer_const_constructors

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Column(children: [
      SizedBox(
        child: Image.asset('assets/euler_logo.png'),
      ),
      Container(
          margin: EdgeInsets.only(top: 30),
          child: Text(
            'Matérias',
            style: TextStyle(
                fontFamily: 'Lato',
                decoration: TextDecoration.none,
                fontSize: 20,
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
                      SizedBox(child: Image.asset('assets/geografia.png')),
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
                      SizedBox(child: Image.asset('assets/matematica.png')),
                      Text(
                        'Matemática',
                        style: TextStyle(
                            color: Color(0xff274378),
                            fontSize: 30,
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
                      SizedBox(child: Image.asset('assets/filosofia.png')),
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
              margin: EdgeInsets.only(top: 60),
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
    ]));
  }
}
