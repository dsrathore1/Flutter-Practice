import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Day6 extends StatefulWidget {
  const Day6({Key? key}) : super(key: key);

  @override
  _Day6State createState() => _Day6State();
}

class _Day6State extends State<Day6> {
  List<String> _list = [
    'assets/Images/1.jpg',
    'assets/Images/2.jpg',
    'assets/Images/3.jpg',
    'assets/Images/4.jpg',
    'assets/Images/5.jpg',
    'assets/Images/6.jpg',
    'assets/Images/7.jpg',
    'assets/Images/8.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Picture Carousel',
          style: TextStyle(
            fontSize: 23,
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              height: 600,
              autoPlayCurve: Curves.linearToEaseOut,
              enlargeCenterPage: true,
              autoPlayAnimationDuration: Duration(seconds: 1),
            ),
            items: _list.map(
              (e) {
                return Builder(builder: (context) {
                  return Container(
                    child: Image.asset(e),
                    width: MediaQuery.of(context).size.width,
                  );
                });
              },
            ).toList(),
          ),
        ),
      ),
    );
  }
}
