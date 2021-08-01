import 'package:bmi_calculator/constant.dart';
import 'package:flutter/material.dart';

class RoundButtons extends StatelessWidget {
  //the class should always have thhe name  starting with capital letter

  final IconData lowerIcons;
  final Function press;
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

class BottomButton extends StatelessWidget {
  BottomButton({this.bottomPress, this.text});
  final Function bottomPress;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: bottomPress,
      child: Container(
        decoration: BoxDecoration(
          color: kPinkishTone,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        width: double.infinity,
        margin: EdgeInsets.only(top: 10.0),
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            text,
            style: kBottomText,
          ),
        ),
      ),
    );
  }
}
