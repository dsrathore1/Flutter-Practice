import 'package:clipboard/clipboard.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class Day6 extends StatefulWidget {
  @override
  _Day6State createState() => _Day6State();
}

class _Day6State extends State<Day6> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Copy and Paste",
          style: GoogleFonts.lato(
            fontSize: 22,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(26.0),
            child: TextField(
              controller: controller,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontFamily: "Roboto-slab",
              ),
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: "Text",
                hintStyle: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () async {
                  await FlutterClipboard.copy(controller.text);

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Copied To Clipboard"),
                    ),
                  );
                },
                child: Text(
                  "Copy",
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 25,
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 25,
                  ),
                ),
                onPressed: () async {
                  final value = await FlutterClipboard.paste();
                  setState(() {
                    controller.text = value;
                  });
                },
                child: Text(
                  "Paste",
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
