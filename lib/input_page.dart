import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomCntainerHeight =
    80.0; //this will allow us to use this quantity anywhere in the code
const appColor = Color(0xFF1F1E33);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                  child: Containerforlayout(
                    colour: appColor,
                    containerInside: UpperContInside(
                      mficon: FontAwesomeIcons.mars,
                      mftext: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: Containerforlayout(
                    colour: appColor,
                    containerInside: UpperContInside(
                      mficon: FontAwesomeIcons.venus,
                      mftext: "FEMALE",
                    ),
                  ),
                )
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
            color: bottomContainerColor,
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
          style: TextStyle(
            fontSize: 18,
            color: Color(0xFF8D8E98),
          ),
        )
      ],
    );
  }
}

class Containerforlayout extends StatelessWidget {
  Containerforlayout({@required this.colour, this.containerInside});
  final Color colour;
  final Widget containerInside;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration:
          BoxDecoration(color: colour, borderRadius: BorderRadius.circular(10)),
      child: containerInside,
    );
  }
}
