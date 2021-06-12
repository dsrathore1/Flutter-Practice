import 'package:flutter/material.dart';

Widget navigationBar(IconData icon, Function() onPressed) {
  return IconButton(
    icon: Icon(icon),
    onPressed: onPressed,
    color: Colors.white,
  );
}

class NavigationBar extends StatelessWidget {
  final IconData? icon;
  final Function()? onPressed;
  final Color? color;
  NavigationBar({Key? key, @required this.icon, @required this.onPressed, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(icon),
      onPressed: onPressed,
      color: color,
    );
  }
}