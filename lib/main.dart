// ignore_for_file: prefer_const_constructors
import 'package:euler_academy/pages/geografia.dart';
import 'package:euler_academy/pages/historia.dart';
import 'package:euler_academy/pages/matematica.dart';
import 'package:euler_academy/pages/quimica.dart';
import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'pages/register_page.dart';
import 'pages/welcome_page.dart';
import 'pages/categories_page.dart';
import 'pages/about_page.dart';
import 'pages/fisica.dart';
import 'pages/quimica.dart';
import 'pages/filosofia.dart';
import 'pages/exercises_page.dart';
import 'pages/my_exercises.dart';

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
        'about': (context) => const AboutPage(),
        'historia': (context) => const Historia(),
        'geografia': (context) => const Geografia(),
        'matematica': (context) => const Matematica(),
        'fisica': (context) => const Fisica(),
        'quimica': (context) => const Quimica(),
        'filosofia': (context) => const Filosofia(),
        'exercises': (context) => const ExercisesPage(),
        'my_exercises' : (context) => const MyExercises()
      },
      theme: ThemeData(
        fontFamily: 'Lato',
      ),
    ),
  );
}
