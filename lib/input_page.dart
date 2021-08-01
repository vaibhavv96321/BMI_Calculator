import 'package:bmi_calculator/newScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_file.dart';
import 'container_layout.dart';
import 'constant.dart';
import 'buttons.dart';
import 'calculator_brain.dart';

enum Gen { male, female }
enum conQuan { cm, ft }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  conQuan quan;
  Gen gender;
  double height = 180;
  int weight = 80;
  int age = 18;
  String conversionQuantity = 'cm';
  double minValue = 130;
  double maxValue = 210;
  int division = 80;

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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RawMaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text(
                            'HEIGHT(cm)',
                            style: kSmallTextstyle,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            quan = conQuan.cm;
                            conversionQuantity = 'cm';
                            minValue = 130;
                            maxValue = 210;
                            height = 180;
                            division = 80;
                          });
                        },
                        fillColor:
                            quan == conQuan.cm ? Color(0xFF0A0E21) : kAppColor,
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      RawMaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text(
                            'HEIGHT(ft)',
                            style: kSmallTextstyle,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            quan = conQuan.ft;
                            conversionQuantity = 'ft';
                            minValue = 4.0;
                            maxValue = 8.0;
                            height = 5.5;
                            division = 40;
                          });
                        },
                        fillColor:
                            quan == conQuan.ft ? Color(0xFF0A0E21) : kAppColor,
                      ),
                    ],
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
                        conversionQuantity,
                        style: kSmallTextstyle,
                      ),
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
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30),
                        overlayColor: Color(0x29EB1555),
                      ),
                      child: Slider(
                        value: height,
                        divisions: division,
                        min: minValue,
                        max: maxValue,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue;
                          });
                        },
                      ))
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Containerforlayout(
                    colour: kAppColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: kSmallTextstyle,
                        ),
                        Text(
                          '$weight',
                          style: kLargeTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundButtons(
                              press: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              lowerIcons: FontAwesomeIcons.minus,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            RoundButtons(
                              press: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              lowerIcons: FontAwesomeIcons.plus,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Containerforlayout(
                    colour: kAppColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: kSmallTextstyle,
                        ),
                        Text(
                          '$age',
                          style: kLargeTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundButtons(
                              press: () {
                                setState(() {
                                  age--;
                                });
                              },
                              lowerIcons: FontAwesomeIcons.minus,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            RoundButtons(
                              press: () {
                                setState(() {
                                  age++;
                                });
                              },
                              lowerIcons: FontAwesomeIcons.plus,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          BottomButton(
            bottomPress: () {
              CalculatorBrain brain = CalculatorBrain(
                  weight, quan == conQuan.cm ? height : (height * 30.48));

              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ResultPage(
                  bmi: brain.bmivalue(),
                  sta: brain.status(),
                  sug: brain.suggestion(),
                );
              }));
            },
            text: 'CALCULATE',
          ),
        ],
      ),
    );
  }
}
