import 'package:flutter/material.dart';

class ShakeTransition extends StatelessWidget {
  final Widget child;
  final Duration duration;
  final double offset;
  final Axis axis;

  const ShakeTransition({
    Key key,
    this.duration = const Duration(milliseconds: 900),
    this.offset = 140.0,
    this.axis = Axis.horizontal,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
        curve: Curves.elasticOut,
        tween: Tween(begin: 1.0, end: 0.0),
        duration: duration,
        builder: (BuildContext context, value, Widget child) =>
            Transform.translate(
              child: child,
              offset: axis == Axis.horizontal
                  ? Offset(value * offset, 0.0)
                  : Offset(0.0, value * offset),
            ),
        child: child);
  }
}
