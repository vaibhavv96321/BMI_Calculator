import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_file.dart';
import 'container_layout.dart';

const bottomCntainerHeight =
    80.0; //this will allow us to use this quantity anywhere in the code
const appColor = Color(0xFF1F1E33);
const bottomContainerColor = Color(0xFFEB1555);
const inactiveAppColor = Color(0xFF111328);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int gender;
  Color maleCardColor = inactiveAppColor;
  Color femaleCardColor = inactiveAppColor;
  void updateColor(int gender) {
    //for male
    if (gender == 1) {
      femaleCardColor = inactiveAppColor;
      if (maleCardColor == inactiveAppColor) {
        maleCardColor = appColor;
      } else {
        maleCardColor = inactiveAppColor;
      }
    } else if (gender == 2) {
      maleCardColor = inactiveAppColor;
      if (femaleCardColor == inactiveAppColor)
        femaleCardColor = appColor;
      else
        femaleCardColor = inactiveAppColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(1);
                      });
                    },
                    child: Containerforlayout(
                      colour: maleCardColor,
                      containerInside: UpperContInside(
                        mficon: FontAwesomeIcons.mars,
                        mftext: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(2);
                      });
                    },
                    child: Containerforlayout(
                      colour: femaleCardColor,
                      containerInside: UpperContInside(
                        mficon: FontAwesomeIcons.venus,
                        mftext: "FEMALE",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Containerforlayout(colour: appColor),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Containerforlayout(colour: appColor),
                ),
                Expanded(
                  child: Containerforlayout(colour: appColor),
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: bottomContainerColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            width: double.infinity,
            margin: EdgeInsets.only(top: 10.0),
            height:
                bottomCntainerHeight, // this quantity is defined above at 4th line
          )
        ],
      ),
    );
  }
}
