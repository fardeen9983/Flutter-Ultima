import 'package:flutter/material.dart';

class HomeEntry extends StatelessWidget {
  final String title;
  final String next;

  const HomeEntry({Key key, @required this.title, @required this.next})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => Navigator.pushNamed(context, next),
        child: Container(
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white60,
              boxShadow: [
                BoxShadow(
                    color: Colors.black12,
                    offset: Offset(-2, 10),
                    blurRadius: 2,
                    spreadRadius: 1)
              ]),
          margin: EdgeInsets.symmetric(vertical: 4, horizontal: 6),
          child: ListTile(
            title: Text(
              title,
              style: TextStyle(fontSize: 22, color: Colors.black),
            ),
          ),
        ));
  }
}
