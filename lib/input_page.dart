import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_file.dart';
import 'container_layout.dart';
import 'constant.dart';

enum Gen { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gen gender;
  int height = 180;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Containerforlayout(
                    onPress: () {
                      setState(() {
                        gender = Gen.male;
                      });
                    },
                    colour: gender == Gen.male ? kAppColor : kInactiveAppColor,
                    cardChild: UpperContInside(
                      mficon: FontAwesomeIcons.mars,
                      mftext: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: Containerforlayout(
                    onPress: () {
                      setState(() {
                        gender = Gen.female;
                      });
                    },
                    colour:
                        gender == Gen.female ? kAppColor : kInactiveAppColor,
                    cardChild: UpperContInside(
                      mficon: FontAwesomeIcons.venus,
                      mftext: "FEMALE",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Containerforlayout(
              colour: kAppColor,
              cardChild: Column(
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
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.toInt();
                          });
                        }),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Containerforlayout(colour: kAppColor),
                ),
                Expanded(
                  child: Containerforlayout(colour: kAppColor),
                )
              ],
            ),
          ),
          Container(
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
          )
        ],
      ),
    );
  }
}
