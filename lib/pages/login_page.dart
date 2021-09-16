// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Faça login ou cadastre-se',
            style: TextStyle(
              color: Colors.white,
            )),
        backgroundColor: Color(0x274378),
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        color: Colors.white,
        child: ListView(children: <Widget>[
          SizedBox(
            child: Image.asset("assets/euler_logo.png"),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            // autofocus: true,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: "E-mail",
              labelStyle: TextStyle(
                color: Colors.black38,
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
            ),
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            // autofocus: true,
            keyboardType: TextInputType.text,
            obscureText: true,
            decoration: InputDecoration(
              labelText: "Senha",
              labelStyle: TextStyle(
                color: Colors.black38,
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
            ),
            style: TextStyle(fontSize: 20),
          ),
        ]),
      ),
    );
  }
}
