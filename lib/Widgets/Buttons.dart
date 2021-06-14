import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class Buttons extends StatelessWidget {
  final text;
  final color;
  final textColor;
  final buttonTapped;
  Buttons({this.text, this.color, this.textColor, this.buttonTapped});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: buttonTapped,
        borderRadius: BorderRadius.circular(20),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              color: color,
              child: Center(
                child: Text(
                  text,
                  style: GoogleFonts.notoSans(
                    fontSize: 26,
                    color: textColor,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
