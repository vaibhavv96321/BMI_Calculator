import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                  child: Containerforlayout(colour: Color(0xFF1F1E33)),
                ),
                Expanded(
                  child: Containerforlayout(colour: Color(0xFF1F1E33)),
                )
              ],
            ),
          ),
          Expanded(
            child: Containerforlayout(colour: Color(0xFF1F1E33)),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Containerforlayout(colour: Color(0xFF1F1E33)),
                ),
                Expanded(
                  child: Containerforlayout(colour: Color(0xFF1F1E33)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Containerforlayout extends StatelessWidget {
  Containerforlayout({this.colour});
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration:
          BoxDecoration(color: colour, borderRadius: BorderRadius.circular(10)),
    );
  }
}
