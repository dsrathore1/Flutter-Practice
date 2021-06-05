import 'package:flutter/material.dart';
import 'dart:math';

class Day1 extends StatefulWidget {
  @override
  State createState() => Day1State();
}

class Day1State extends State<Day1> {
  dynamic currentIndex;

  List<String> food = [
    "Pizza",
    "Burger",
    "Tacos",
    "Mango Cake",
    "Maggie",
    "Dabeli",
    "Bajiya",
    "Dal Bati"
  ];

  void change() {
    final random = Random();
    final index = random.nextInt(food.length);
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Day 1"),
        leading: IconButton(
          icon: Icon(Icons.menu_open),
          onPressed: () {},
        ),
        centerTitle: true,
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
        ],
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "What would you like to eat?",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 25,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            if (currentIndex != null)
              Center(
                child: Text(
                  food[currentIndex],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
            SizedBox(
              height: 30,
            ),
            TextButton(
              child: Text("Order Your Food"),
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.purple,
                padding: EdgeInsets.all(14),
                textStyle: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
              ),
              onPressed: () {
                change();
              },
            ),
          ],
        ),
      ),
    );
  }
}

/*
! Learn -
! 1. "if" statement between the widgets 
? 2. Use of functions
* 3. onPressed Property using
! 
*/
