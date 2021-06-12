import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String? text;
  final Function()? onClicked;

  ButtonWidget({@required this.text, @required this.onClicked});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onClicked,
      style: ElevatedButton.styleFrom(
        elevation: 4,
        primary: Colors.blue,
        padding: EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 32,
        ),
      ),
      child: Text(
        text.toString(),
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          fontFamily: 'Roboto-slab',
        ),
      ),
    );
  }
}
