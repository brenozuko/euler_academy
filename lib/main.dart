// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'pages/register_page.dart';
import 'pages/welcome_page.dart';
import 'pages/categories_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Euler Academy',
      initialRoute: 'welcome',
      routes: {
        'welcome': (context) => const WelcomePage(),
        'login': (context) => const LoginPage(),
        'categories': (context) => const CategoriesPage(),
        'register': (context) => const RegisterPage(),
      },
      theme: ThemeData(
        fontFamily: 'Lato',
      ),
    ),
  );
}
