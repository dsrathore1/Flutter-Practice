import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:practice/Pages/Day1.dart';
import 'package:practice/Pages/Day2.dart';
import 'package:practice/Pages/Day3.dart';
import 'package:practice/Pages/Day4.dart';
import 'package:practice/Pages/Day5.dart';
import 'package:practice/Pages/Day6.dart';
import 'package:practice/Pages/Day7.dart';
import 'package:practice/Pages/Day8.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Practice Days",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        fontFamily: GoogleFonts.robotoSlab().fontFamily,
      ),
      initialRoute: "/Day8",
      routes: {
        // "/Day9": (day9) => Day9(),
        "/Day8": (day8) => Day8(),
        "/Day7": (day7) => Day7(),
        "/Day6": (day6) => Day6(),
        "/Day5": (day5) => Day5(),
        "/Day4": (day4) => Day4(),
        "/Day3": (day3) => Day3(),
        "/Day2": (day2) => EasyRead(),
        "/Day1": (day1) => Day1(),
      },
    );
  }
}
