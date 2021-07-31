import 'package:flutter/material.dart';

class Containerforlayout extends StatelessWidget {
  Containerforlayout(
      {@required this.colour, this.containerInside, this.onPress});
  final Color colour;
  final Widget containerInside;
  final Function
      onPress; // i have made a function type and i will pass it to the constructor above
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: colour, borderRadius: BorderRadius.circular(10)),
        child: containerInside,
      ),
    );
  }
}
