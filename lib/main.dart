import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapi/pages/home_screen.dart';
import 'package:newsapi/samplexb2/homescreen2.dart/home_screen2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        // primarySwatch: Colors.lightBlue
      ),
      home: HomeScreen2(),
    );
  }
}
