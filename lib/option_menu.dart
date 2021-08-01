import 'constant.dart';
import 'package:flutter/material.dart';

class Option_Button extends StatelessWidget {
  Option_Button({this.height, this.onchanged});

  final Function onchanged;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'HEIGHT',
          style: kSmallTextstyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline
              .alphabetic, // we need to do this beacuse of the baseline glitch
          children: [
            Text(
              '$height',
              style: kLargeTextStyle,
            ),
            Text(
              'cm',
              style: kSmallTextstyle,
            )
          ],
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            activeTrackColor: Colors.white,
            inactiveTrackColor: kGreyTone,
            thumbShape: RoundSliderThumbShape(
              enabledThumbRadius: 15,
            ),
            thumbColor: kPinkishTone,
            overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
            overlayColor: Color(0x29EB1555),
          ),
          child: Slider(
              value: height.toDouble(),
              min: 130,
              max: 210,
              onChanged: onchanged),
        )
      ],
    );
  }
}
