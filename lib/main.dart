import 'package:basic_landing_webpage/src/content/contact_web.dart';
import 'package:basic_landing_webpage/src/my_web_page.dart';
import 'package:flutter/material.dart';

//Importaciones de firebase
// ignore: unused_import

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Firestore Demo',
      initialRoute: "/",
      routes: {
        "/": (context) =>  MyWebPage(),
        "/contact": (context) =>  ContactWeb(),
      },
    );
  }
}
