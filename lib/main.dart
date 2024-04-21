import 'package:flutter/material.dart';
import 'package:salon/Login.dart';
import 'package:salon/comboopage.dart';
import 'package:salon/rigester.dart';
import 'package:salon/splashscreen.dart';





void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: comboPagebutton(),
    routes: {
      'register': (context) => Register(),
      'login': (context) => MyLogin(),
    },
  ));
}