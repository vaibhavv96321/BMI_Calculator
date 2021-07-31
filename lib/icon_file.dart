import 'package:flutter/material.dart';
import 'constant.dart';

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
          style: kSmallTextstyle,
        ),
      ],
    );
  }
}
