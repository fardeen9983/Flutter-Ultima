import 'package:flutter/material.dart';
import 'package:flutter_ultima/sections/animations/shake_transition/shake_transition.dart';

import 'sections/home/ui.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Ultima',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        onGenerateRoute: (RouteSettings settings) {
          var route;
          switch (settings.name) {
            case ShakeTransitionAboutScreen.TAG:
              route = MaterialPageRoute(
                  builder: (_) => ShakeTransitionAboutScreen(),
                  settings: settings);
              break;
            case ShakeTransitionHomeScreen.TAG:
              route = MaterialPageRoute(
                  builder: (_) => ShakeTransitionHomeScreen(),
                  settings: settings);
              break;
            default:
              route = MaterialPageRoute(builder: (_) => HomeScreen());
          }
          return route;
        },
        home: HomeScreen());
  }
}
