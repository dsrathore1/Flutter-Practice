import 'package:flutter/material.dart';


// import 'package:practice/Practice_Day/Day1.dart';
// import 'package:practice/Practice_Day/Day2.dart';
// import 'package:practice/Practice_Day/Day3.dart';
import 'package:practice/Practice_Day/Day4.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Practice Days",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        home: Day4());
  }
}
