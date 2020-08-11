import 'package:flutter/material.dart';
import 'package:flutter_ultima/sections/animations/shake_transition/widgets/widgets.dart';

class ShakeTransitionHomeScreen extends StatefulWidget {
  static const TAG = "sh-tr-ho-screen";

  @override
  _ShakeTransitionHomeScreenState createState() =>
      _ShakeTransitionHomeScreenState();
}

class _ShakeTransitionHomeScreenState extends State<ShakeTransitionHomeScreen> {
  bool switched = true;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.dark(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Shake Transition"),
          centerTitle: true,
          actions: [
            Switch(
              value: switched,
              onChanged: (bool value) => setState(() => switched = value),
            )
          ],
        ),
        body: Container(
          padding: EdgeInsets.all(25),
          width: double.maxFinite,
          child: switched
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ShakeTransition(
                        child: Text(
                      "Hello World",
                      style: Theme.of(context)
                          .textTheme
                          .headline3
                          .copyWith(color: Colors.white),
                    )),
                    const SizedBox(
                      height: 20,
                    ),
                    ShakeTransition(
                        axis: Axis.vertical,
                        duration: Duration(milliseconds: 1500),
                        child: RaisedButton(
                          child: Text("Press me"),
                          onPressed: () {},
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    ShakeTransition(
                        duration: Duration(milliseconds: 1100),
                        axis: Axis.vertical,
                        child: CircleAvatar(
                          backgroundColor: Colors.red,
                        )),
                  ],
                )
              : Container(),
        ),
      ),
    );
  }
}
