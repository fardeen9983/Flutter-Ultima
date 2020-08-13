import 'package:flutter/material.dart';

class SnakeAnimationHomeScreen extends StatefulWidget {
  static const TAG = "/sn-an-ho-sc";

  @override
  _SnakeAnimationHomeScreenState createState() =>
      _SnakeAnimationHomeScreenState();
}

class _SnakeAnimationHomeScreenState extends State<SnakeAnimationHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.dark(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Snake Buttons",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
