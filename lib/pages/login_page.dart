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
        centerTitle: true,
        title: Text(
          'Faça login ou cadastre-se',
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.bold,
            fontFamily: 'Lato',
          ),
        ),
        backgroundColor: Color(0xff274378),
      ),
      body: Container(
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        color: Colors.white,
        child: ListView(children: <Widget>[
          SizedBox(
            child: Image.asset("assets/euler_logo.png"),
          ),

          SizedBox(
            height: 20,
          ),

          // INPUT EMAIL
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
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xff274378)),
              ),
            ),
            style: TextStyle(fontSize: 20),
          ),

          SizedBox(
            height: 10,
          ),

          // INPUT PASSWORD
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
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xff274378),
                ),
              ),
            ),
            style: TextStyle(fontSize: 20),
          ),

          SizedBox(
            height: 30,
          ),

          //LOGIN BUTTON
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color(0xff1865F2),
              onPrimary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            onPressed: () => print('miau'),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'LOGIN',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          SizedBox(
            height: 80,
          ),

          // FACEBOOK SIGN IN
          Container(
            height: 60,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: Color(0xFF3C5A99),
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 2,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: SizedBox.expand(
              child: TextButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(
                      "Login com Facebook",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Lato',
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Container(
                      child: SizedBox(
                        child: Image.asset("assets/fb-icon.png"),
                        height: 28,
                        width: 28,
                      ),
                    )
                  ],
                ),
                onPressed: () {},
              ),
            ),
          ),

          // SPACING
          SizedBox(
            height: 20,
          ),

          // GOOGLE SIGN IN
          Container(
            height: 60,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: Color(0xFFF5F5F5),
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 2,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: SizedBox.expand(
              child: TextButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(
                      "Login com Google",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Lato',
                        color: Colors.black,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Container(
                      child: SizedBox(
                        child: Image.asset("assets/google-icon.png"),
                        height: 28,
                        width: 28,
                      ),
                    )
                  ],
                ),
                onPressed: () {},
              ),
            ),
          ),

          SizedBox(
            height: 20,
          ),

          Container(
            child: Center(
              child: Text('OU',
                  style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ),

          SizedBox(
            height: 20,
          ),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color(0xff1865F2),
              onPrimary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            onPressed: () => print('miau'),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'CADASTRE-SE',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          SizedBox(
            height: 20,
          ),
        ]),
      ),
    );
  }
}
