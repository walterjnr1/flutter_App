import "package:flutter/material.dart";
import 'package:forum_app/pages/home.dart';
import 'package:forum_app/pages/login2.dart';
import 'package:forum_app/pages/register2.dart';


void main() =>  runApp(  MaterialApp(
  debugShowCheckedModeBanner: false,
  initialRoute: '/',
  routes: {
    '/': (context) => const Home(),
    '/register2': (context) =>  const Register2(),

  },
));
