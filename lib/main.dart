import 'package:flutter/material.dart';
import 'package:list_resep/views/home.dart';
import 'package:list_resep/views/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
    // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List Resep',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors. blue,
          primaryColor: Colors.white,
          textTheme: TextTheme(bodyText2: TextStyle(color: Colors.white))),
      home: LoginPage(),
    );
  }
}
