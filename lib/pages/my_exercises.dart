// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'components/drawer_content.dart';

class MyExercises extends StatefulWidget {
  const MyExercises({Key? key}) : super(key: key);

  @override
  _MyExercisesState createState() => _MyExercisesState();
}

class _MyExercisesState extends State<MyExercises> {
  var lista = [];
  var txtExercicio = TextEditingController();
  var controllerNovoNome = TextEditingController();
  var novoNome = '';

  void adicionar(nome) {
    setState(() {
      if (nome != '') {
        lista.add(nome);
      }
    });
  }

  @override
  void initState() {
    super.initState();
  }

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
      body: Column(
        children: [
          Expanded(
              child: Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: TextFormField(
                  // autofocus: true,
                  controller: txtExercicio,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Nome do Exercício",
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
              ),
              Container(
                height: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    adicionar(txtExercicio.text);
                    txtExercicio.text = '';
                  },
                  child: const Text('Adicionar Exercício',
                      style: TextStyle(
                          color: Color(0xffffffff),
                          fontSize: 20,
                          decoration: TextDecoration.none)),
                ),
              )
            ],
          )),
          Expanded(
            flex: 4,
            child: Container(
              padding: EdgeInsets.all(20),

              //
              // ListView
              //
              child: ListView.builder(
                //quantidade de elementos da lista
                itemCount: lista.length,

                //alterar a orientação (vertical/horizontal)
                //scrollDirection: Axis.horizontal,

                //definir a aparência dos elementos
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        ListTile(
                          //leading: Icon(Icons.arrow_right),
                          title: Text(
                            lista[index],
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xff274378),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Row(children: [
                          Expanded(
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.red)),
                                  onPressed: () {
                                    setState(() {
                                      lista.remove(lista[index]);
                                    });
                                  },
                                  child: Icon(Icons.auto_delete))),
                          Expanded(
                              child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.blue.shade900)),
                            onPressed: () {
                              showDialog<String>(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                  title: const Text('Insira o novo nome'),
                                  content: TextField(
                                    onChanged: (value) {
                                      setState(() {
                                        novoNome = value;
                                      });
                                    },
                                    controller: controllerNovoNome,
                                    decoration:
                                        InputDecoration(hintText: "Novo nome"),
                                  ),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(context, 'Sair'),
                                      child: const Text('Sair'),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        if (novoNome != "") {
                                          setState(() {
                                            lista[index] = novoNome;
                                          });
                                          controllerNovoNome.text = '';
                                          Navigator.pop(context, "Alterar");
                                        }
                                      },
                                      child: const Text('Alterar'),
                                    ),
                                  ],
                                ),
                              );
                            },
                            child: Icon(Icons.create_rounded),
                          ))
                        ])
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 0,
                          blurRadius: 5,
                          offset: Offset(0, 0), // changes position of shadow
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
