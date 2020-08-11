import 'package:flutter/material.dart';
import 'package:flutter_ultima/sections/animations/shake_transition/shake_transition.dart';
import 'package:flutter_ultima/sections/home/widgets/widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Colors.white,
        title: Text(
          "Flutter Ultima",
          style: TextStyle(
              fontSize: 24, letterSpacing: -.05, color: Colors.black87),
        ),
        centerTitle: false,
      ),
      body: ListView(
        children: [
          HomeEntry(
              title: "Shake Transition", next: ShakeTransitionAboutScreen.TAG)
        ],
      ),
    );
  }
}
