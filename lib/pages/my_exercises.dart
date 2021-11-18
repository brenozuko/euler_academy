// ignore_for_file: prefer_const_constructors
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'components/drawer_content.dart';

class MyExercises extends StatefulWidget {
  const MyExercises({Key? key}) : super(key: key);

  @override
  _MyExercisesState createState() => _MyExercisesState();
}

class _MyExercisesState extends State<MyExercises> {
  var lista;

  @override
  void initState() {
    super.initState();

    lista = FirebaseFirestore.instance.collection('exercicios');
  }

  var txtExercicio = TextEditingController();
  var controllerNovoNome = TextEditingController();
  var novoNome = '';
  var txtMateria = TextEditingController();
  var controllerNovaNateria = TextEditingController();
  var novaMateria = '';

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
                padding: EdgeInsets.fromLTRB(20, 0, 20, 5),
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
                padding: EdgeInsets.fromLTRB(20, 0, 20, 6),
                child: TextFormField(
                  // autofocus: true,
                  controller: txtMateria,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Nome da Materia",
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
                    if (txtExercicio.text != "" && txtMateria.text != "") {
                      FirebaseFirestore.instance.collection('exercicios').add({
                        'nome': txtExercicio.text,
                        'materia': txtMateria.text,
                      });

                      txtMateria.text = '';
                      txtExercicio.text = '';
                    }
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
              child: StreamBuilder<QuerySnapshot>(
                stream: lista.snapshots(),
                builder: (context, snapshot) {
                  switch (snapshot.connectionState) {
                    case ConnectionState.none:
                      return const Center(
                        child: Text('Não foi possível conectar ao Firestore'),
                      );

                    case ConnectionState.waiting:
                      return const Center(
                        child: CircularProgressIndicator(),
                      );

                    //se os dados foram recebidos com sucesso
                    default:
                      final dados = snapshot.requireData;
                      return ListView.builder(
                        //quantidade de elementos da lista
                        itemCount: dados.size,

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
                                      dados.docs[index]['nome'],
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Color(0xff274378),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    subtitle: Text(dados.docs[index]['materia'],
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xff000000)))),
                                Row(children: [
                                  Expanded(
                                      child: ElevatedButton(
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all<
                                                      Color>(Colors.red)),
                                          onPressed: () {
                                            lista
                                                .doc(dados.docs[index].id)
                                                .delete();
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
                                        builder: (BuildContext context) =>
                                            AlertDialog(
                                          title:
                                              const Text('Insira o novo nome'),
                                          content: Column(
                                            children: [
                                              TextField(
                                                onChanged: (value) {
                                                  setState(() {
                                                    novoNome = value;
                                                  });
                                                },
                                                controller: controllerNovoNome,
                                                decoration: InputDecoration(
                                                    hintText: "Novo nome"),
                                              ),
                                              TextField(
                                                onChanged: (value) {
                                                  setState(() {
                                                    novaMateria = value;
                                                  });
                                                },
                                                controller:
                                                    controllerNovaNateria,
                                                decoration: InputDecoration(
                                                    hintText: "Nova materia"),
                                              )
                                            ],
                                          ),
                                          actions: <Widget>[
                                            TextButton(
                                              onPressed: () => Navigator.pop(
                                                  context, 'Sair'),
                                              child: const Text('Sair'),
                                            ),
                                            TextButton(
                                              onPressed: () {
                                                if (novoNome != "" &&
                                                    novaMateria != "") {
                                                  FirebaseFirestore.instance
                                                      .collection('exercicios')
                                                      .doc(dados.docs[index].id
                                                          .toString())
                                                      .set({
                                                    'nome': novoNome,
                                                    'materia': novaMateria,
                                                  });
                                                  controllerNovoNome.text = '';
                                                  controllerNovaNateria.text =
                                                      '';
                                                  Navigator.pop(
                                                      context, "Alterar");
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
                                  offset: Offset(
                                      0, 0), // changes position of shadow
                                )
                              ],
                            ),
                          );
                        },
                      );
                  }
                },
                //quantidade de elementos da lista

                //alterar a orientação (vertical/horizontal)
                //scrollDirection: Axis.horizontal,

                //definir a aparência dos elementos
              ),
            ),
          ),
        ],
      ),
    );
  }
}
