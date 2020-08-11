import 'package:flutter/material.dart';
import 'package:flutter_ultima/sections/animations/shake_transition/shake_transition.dart';
import 'package:flutter_ultima/sections/animations/shake_transition/ui.dart';

class ShakeTransitionAboutScreen extends StatefulWidget {
  static const TAG = "sh-tr-ab-screen";

  @override
  _ShakeTransitionAboutScreenState createState() =>
      _ShakeTransitionAboutScreenState();
}

class _ShakeTransitionAboutScreenState
    extends State<ShakeTransitionAboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shake Transition About"),
      ),
      body: Center(
        child: RaisedButton(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 12),
              child: Text("Go"),
            ),
            onPressed: () =>
                Navigator.pushNamed(context, ShakeTransitionHomeScreen.TAG)),
      ),
    );
  }
}
