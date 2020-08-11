import 'package:flutter/material.dart';

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
        children: [],
      ),
    );
  }
}
