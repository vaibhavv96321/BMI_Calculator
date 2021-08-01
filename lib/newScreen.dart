import 'package:flutter/material.dart';
import 'constant.dart';
import 'container_layout.dart';
import 'buttons.dart';

class ResultPage extends StatelessWidget {
  ResultPage({@required this.bmi, @required this.sta, @required this.sug});

  final double bmi;
  final String sta;
  final String sug;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Container(
              padding: EdgeInsets.only(right: 60),
              child: Text(
                ' BMI CALCULATOR',
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 20),
                child: Text(
                  'Your Result',
                  style: kLargeTextStyle,
                ),
              ),
              Expanded(
                child: Containerforlayout(
                  colour: kAppColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        sta.toUpperCase(),
                        style:
                            bmi > 18 && bmi <= 25 ? kResultTextStyle : kResult2,
                      ),
                      Text(
                        bmi.toStringAsFixed(1),
                        style: kBMITextStyle,
                      ),
                      Text(
                        sug,
                        textAlign: TextAlign.center,
                        style: kSuggestionTextStyle,
                      ),
                    ],
                  ),
                ),
              ),
              BottomButton(
                bottomPress: () {
                  Navigator.pop(context);
                },
                text: 'RE-CALCULATE',
              )
            ],
          ),
        ));
  }
}
