import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors

class DrawerContent extends StatefulWidget {
  const DrawerContent({Key? key}) : super(key: key);

  @override
  _DrawerContentState createState() => _DrawerContentState();
}

class _DrawerContentState extends State<DrawerContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff274378),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                child: Image.asset('assets/euler_logo_white.png'),
              ),
              IconButton(
                icon: Image.asset('assets/close_icon.png'),
                iconSize: 50,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.all(25.0),
            padding: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(width: 4.0, color: Colors.white),
              ),
            ),
            child: Column(children: [
              ListTile(
                title: Text(
                  'Matérias',
                  style: TextStyle(
                    fontFamily: 'Lato',
                    decoration: TextDecoration.none,
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
                onTap: () => {
                  Navigator.pushNamed(context, 'categories'),
                },
              ),
              ListTile(
                title: Text(
                  'Exercícios',
                  style: TextStyle(
                    fontFamily: 'Lato',
                    decoration: TextDecoration.none,
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
                onTap: () => {
                  Navigator.pushNamed(context, 'exercises'),
                },
              ),
              ListTile(
                title: Text(
                  'Sobre nós',
                  style: TextStyle(
                    fontFamily: 'Lato',
                    decoration: TextDecoration.none,
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
                onTap: () => {
                  Navigator.pushNamed(context, 'about'),
                },
              ),
              ListTile(
                title: Text(
                  'Meus Exercícios',
                  style: TextStyle(
                    fontFamily: 'Lato',
                    decoration: TextDecoration.none,
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
                onTap: () => {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      'my_exercises', (Route<dynamic> route) => false),
                },
              ),
              ListTile(
                title: Text(
                  'Logout',
                  style: TextStyle(
                    fontFamily: 'Lato',
                    decoration: TextDecoration.none,
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
                onTap: () => {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      'login', (Route<dynamic> route) => false),
                },
              ),
            ]),
          )
        ],
      ),
    );
  }
}
