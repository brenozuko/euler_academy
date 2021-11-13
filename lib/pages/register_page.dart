// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool value = false;
  var txtNome = TextEditingController();
  var txtEmail = TextEditingController();
  var txtSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Crie sua conta',
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

          TextFormField(
            // autofocus: true,
            controller: txtNome,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: "Nome completo",
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
            height: 20,
          ),

          // INPUT EMAIL
          TextFormField(
            // autofocus: true,
            controller: txtEmail,
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

          TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: "Instituição de ensino",
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
            height: 10,
          ),

          // INPUT PASSWORD
          TextFormField(
            // autofocus: true,
            controller: txtSenha,
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

          buildCheckbox(),

          SizedBox(
            height: 30,
          ),

          //REGISTER BUTTON
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color(0xff1865F2),
              onPrimary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            onPressed: () {
              criarConta(
                txtNome.text,
                txtEmail.text,
                txtSenha.text,
              );
            },
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'CADASTRAR',
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

          // FACEBOOK SIGN UP
          Container(
            height: 45,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: Color(0xFF3C5A99),
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(1, 1), // changes position of shadow
                ),
              ],
            ),
            child: SizedBox.expand(
              child: TextButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(
                      "Registrar com Facebook",
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

          // GOOGLE SIGN UP
          Container(
            height: 45,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: Color(0xFFF5F5F5),
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(1, 1), // changes position of shadow
                ),
              ],
            ),
            child: SizedBox.expand(
              child: TextButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(
                      "Registrar com Google",
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
        ]),
      ),
    );
  }

  Widget buildCheckbox() => Column(children: <Widget>[
        Align(
          alignment: Alignment.center,
          child: Container(
            width: 300,
            child: ListTile(
              leading: Checkbox(
                value: value,
                onChanged: (value) {
                  setState(
                    () {
                      this.value = !this.value;
                    },
                  );
                },
              ),
              title: Text(
                'Aceito os termos de uso',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        )
      ]);

  void criarConta(nome, email, senha) {
    FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: senha)
        .then((value) {
      exibirMensagem('Usuário criado com sucesso!');
      Navigator.pop(context);
    }).catchError((erro) {
      if (erro.code == 'email-already-in-use') {
        exibirMensagem('ERRO: O email informado está em uso.');
      } else if (erro.code == 'invalid-email') {
        exibirMensagem('ERRO: Email inválido.');
      } else {
        exibirMensagem('ERRO: ${erro.message}');
      }
    });
  }

  void exibirMensagem(msg) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(msg),
        duration: Duration(seconds: 2),
      ),
    );
  }
}
