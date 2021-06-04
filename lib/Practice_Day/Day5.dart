import 'package:flutter/material.dart';
import 'package:practice/Widgets/webview.dart';

class Day5 extends StatefulWidget {
  _Day5State createState() => _Day5State();
}

class _Day5State extends State<Day5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent[400],
        leading: IconButton(
          icon: Icon(
            Icons.menu_open,
            size: 28,
          ),
          onPressed: () {},
        ),
        title: Text("Show A Website",
            style: TextStyle(
              fontSize: 22,
            )),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search, size: 28)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert, size: 28)),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.pinkAccent[400],
        child: ButtonBar(
          children: [
            navigationBar(Icons.arrow_back_ios, () {}),
            Padding(
              padding: EdgeInsets.only(left: 290),
              child: navigationBar(Icons.arrow_forward_ios, () {}),
            ),
          ],
        ),
        height: 60,
      ),
      body: Center(
        child: Text("Hello"),
      ),
    );
  }
}
