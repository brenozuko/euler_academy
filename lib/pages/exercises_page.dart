// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'components/drawer_content.dart';

class ExercisesPage extends StatefulWidget {
  const ExercisesPage({Key? key}) : super(key: key);

  @override
  _ExercisesPageState createState() => _ExercisesPageState();
}

class _ExercisesPageState extends State<ExercisesPage> {
  var lista;

  @override
  void initState() {
    super.initState();

    lista = FirebaseFirestore.instance.collection('exercicios');
  }

  exibirExercicos(item) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: ListTile(
        //leading: Icon(Icons.arrow_right),
        title: Text(
          item.data()['nome'],
          style: TextStyle(
            fontSize: 20,
            color: Color(0xff274378),
            fontWeight: FontWeight.bold,
          ),
        ),

        subtitle: Text(item.data()['materia']),

        trailing: ElevatedButton(
          onPressed: () {},
          child: const Text(
            'Iniciar',
            style: TextStyle(
              fontFamily: 'Lato',
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
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
            flex: 5,
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
                          return exibirExercicos(dados.docs[index]);
                        },
                      );
                  }
                },
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: SizedBox(
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
                          hintText: "Pesquisar por algo específico...",
                          fillColor: Color(0xffffffff)),
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
