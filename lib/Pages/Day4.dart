import "package:flutter/material.dart";
import 'package:flip_card/flip_card.dart';
import 'package:practice/Widgets/flashcardView.dart';

class Day4 extends StatefulWidget {
  _Day4State createState() => _Day4State();
}

class _Day4State extends State<Day4> {
  List<FlashCard> _flashcard = [
    FlashCard(
      question: 'Which language use in flutter?',
      answer: "Dart",
    ),
    FlashCard(
      question: "Dart is the Object Oriented Programming Language?",
      answer: "Yes",
    ),
    FlashCard(
      question: "Dart is only Scripting Language?",
      answer: "No",
    ),
    FlashCard(
      question:
          "Which one is the Immutable typed, List or Tuple in Python Language ?",
      answer: 'Tuple',
    ),
  ];

  int _currentIndex = 0;

// ! Statement ? True : False;

  void showNext() {
    setState(() {
      _currentIndex =
          _currentIndex + 1 < _flashcard.length ? _currentIndex + 1 : 0;
    });
  }

  void showPrevious() {
    setState(() {
      _currentIndex = _currentIndex - 1 >= 0 ? _currentIndex - 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text(
          "FlashCard",
          style: TextStyle(
            fontSize: 25,
            fontFamily: "Cursive",
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.menu_open),
          onPressed: () {},
        ),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            child: Text(
              "Q & A",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            height: 50,
          ),
          SizedBox(
            height: 250,
            width: 350,
            child: FlipCard(
              front: FlashcardView(
                text: _flashcard[_currentIndex].question,
              ),
              back: FlashcardView(
                text: _flashcard[_currentIndex].answer,
                
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton.icon(
                onPressed: showPrevious,
                style: ElevatedButton.styleFrom(primary: Colors.indigo),
                icon: Icon(
                  Icons.chevron_left,
                ),
                label: Text('Prev'),
              ),
              ElevatedButton.icon(
                onPressed: showNext,
                style: ElevatedButton.styleFrom(primary: Colors.indigo),
                icon: Icon(Icons.chevron_right),
                label: Text('Next'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
