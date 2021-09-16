// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:euler_academy/pages/login_page.dart';
import 'pages/welcome_page.dart';

void main() {
  // ignore: prefer_const_constructors
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Euler Academy',
    home: WelcomePage(),
  ));
}
