import 'package:flutter/material.dart';

const iconstyle = TextStyle(
  fontSize: 18,
  color: Color(0xFF8D8E98),
);

class UpperContInside extends StatelessWidget {
  final IconData mficon;
  final String mftext;

  UpperContInside({this.mficon, this.mftext});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          mficon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          mftext,
          style: iconstyle,
        ),
      ],
    );
  }
}
