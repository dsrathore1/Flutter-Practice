import 'package:flutter/material.dart';

class FlashcardView extends StatelessWidget {
  final text;
  FlashcardView({Key? key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Center(
        child: Text(
          text,
          maxLines: null,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}

class FlashCard {
  final String? question;

  final String? answer;

  FlashCard({this.question, this.answer});
}
