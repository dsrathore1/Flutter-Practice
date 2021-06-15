import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:practice/Widgets/Buttons.dart';
import 'package:math_expressions/math_expressions.dart';

class Day7 extends StatefulWidget {
  @override
  _Day7State createState() => _Day7State();
}

class _Day7State extends State<Day7> {
  String userQuestion = '';
  String userAnswer = '';

  List<String> buttons = [
    'C',
    'Del',
    '%',
    '/',
    '7',
    '8',
    '9',
    'x',
    '4',
    '5',
    '6',
    '-',
    '1',
    '2',
    '3',
    '+',
    '.',
    '0',
    '00',
    '=',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      userQuestion,
                      style: GoogleFonts.notoSans(
                        color: Colors.black,
                        fontSize: 40,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    alignment: Alignment.centerRight,
                    child: Text(
                      userAnswer,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: GridView.builder(
                padding: EdgeInsets.zero,
                itemCount: buttons.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                ),
                itemBuilder: (BuildContext context, int index) {
                  //! Clear Button

                  if (index == 0) {
                    return Buttons(
                        buttonTapped: () {
                          setState(() {
                            userAnswer = '';
                            userQuestion = '';
                          });
                        },
                        text: buttons[index],
                        color: Colors.green,
                        textColor: Colors.white);
                  }
                  //! Delete button

                  else if (index == 1) {
                    return Buttons(
                      buttonTapped: () {
                        setState(() {
                          userQuestion = userQuestion.substring(
                              0, userQuestion.length - 1);
                        });
                      },
                      text: buttons[index],
                      color: Colors.red,
                      textColor: Colors.white,
                    );
                  }
                  //! Equal button

                  else if (index == buttons.length - 1) {
                    return Buttons(
                      buttonTapped: () {
                        setState(() {
                          equalPressed();
                        });
                      },
                      text: buttons[index],
                      color: Colors.deepPurple,
                      textColor: Colors.white,
                    );
                  } else {
                    return Buttons(
                      buttonTapped: () {
                        setState(() {
                          userQuestion += buttons[index];
                        });
                      },
                      text: buttons[index],
                      color: isOperator(buttons[index])
                          ? Colors.deepPurple
                          : Colors.white,
                      textColor: isOperator(buttons[index])
                          ? Colors.white
                          : Colors.deepPurple,
                    );
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  bool isOperator(String x) {
    if (x == '%' || x == '-' || x == 'x' || x == '+' || x == '=' || x == '/') {
      return true;
    }
    return false;
  }

  void equalPressed() {
    String finalQuestion = userQuestion;
    finalQuestion = finalQuestion.replaceAll("x", '*');
    Parser p = Parser();
    Expression exp = p.parse(finalQuestion);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);

    userAnswer = eval.toString();
  }
}
