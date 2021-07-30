import 'package:flutter/material.dart';

class Containerforlayout extends StatelessWidget {
  Containerforlayout({@required this.colour, this.containerInside});
  final Color colour;
  final Widget containerInside;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration:
          BoxDecoration(color: colour, borderRadius: BorderRadius.circular(10)),
      child: containerInside,
    );
  }
}
