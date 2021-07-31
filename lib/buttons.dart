import 'package:bmi_calculator/constant.dart';
import 'package:flutter/material.dart';

class RoundButtons extends StatelessWidget {
  //the class should always have thhe name  starting with capital letter

  IconData lowerIcons;
  Function press;
  RoundButtons({this.press, this.lowerIcons});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: CircleBorder(),
      fillColor: kButtonColor,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      child: Icon(lowerIcons),
      onPressed: press,
    );
  }
}
