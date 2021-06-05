import 'package:flutter/material.dart';

// ! Easy Read

class EasyRead extends StatefulWidget {
  @override
  _EasyReadState createState() => _EasyReadState();
}

class _EasyReadState extends State<EasyRead> {
  final _controller = TextEditingController();
  double _fontsize = 40;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Easy Read",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: TextField(
                controller: _controller,
                textInputAction: TextInputAction.done,
                maxLines: null,
                style: TextStyle(
                  fontSize: _fontsize,
                ),
              ),
            ),
            Slider(
              value: _fontsize,
              onChanged: (newValue) {
                setState(() {
                  _fontsize = newValue;
                });
              },
              max: 200.0,
              min: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
