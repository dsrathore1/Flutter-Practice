import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:practice/Widgets/ButtonWidgets.dart';

class Day5 extends StatefulWidget {
  const Day5({Key? key}) : super(key: key);

  @override
  _Day5State createState() => _Day5State();
}

class _Day5State extends State<Day5> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            "Day5",
            style: GoogleFonts.meddon(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Builder(
          builder: (context) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonWidget(
                  text: 'Simple SnackBar',
                  onClicked: () async {
                    ScaffoldMessenger.of(context)
                      ..removeCurrentSnackBar()
                      ..showSnackBar(
                        SnackBar(
                          content: Text(
                            "Simple SnackBar",
                          ),
                        ),
                      );
                    await Future.delayed(Duration(seconds: 1));
                    Navigator.pushNamed(context, "/Day4");
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                ButtonWidget(
                  text: 'Action SnackBar',
                  onClicked: () {
                    final text = Text('Action SnackBar without Dismiss');
                    final snackBar = SnackBar(
                      content: text,
                      duration: Duration(days: 365),
                      action: SnackBarAction(
                        onPressed: () {},
                        label: "Dismiss",
                      ),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                ButtonWidget(
                  text: 'Async SnackBar',
                  onClicked: () {
                    final text = Text("Async SnackBar");
                    final snackBar = SnackBar(
                      content: text,
                    );
                    ScaffoldMessenger.of(context)..showSnackBar(snackBar);
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                ButtonWidget(
                  text: 'Error SnackBar',
                  onClicked: () {
                    final text = Text(
                      "Error",
                      style: TextStyle(
                        fontFamily: "Roboto-slab",
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    );
                    final snackBar = SnackBar(
                      behavior: SnackBarBehavior.fixed,
                      backgroundColor: Colors.red,
                      content: Row(
                        children: [
                          Icon(
                            Icons.error_outline,
                            size: 35,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          text,
                        ],
                      ),
                    );
                    ScaffoldMessenger.of(context)
                      ..hideCurrentSnackBar()
                      ..showSnackBar(snackBar);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
