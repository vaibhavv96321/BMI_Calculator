import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // routes: {
      //   '/': (context) => InputPage(),
      //   '/result': (context) => ResultPage(),
      // },
      // i can use this while the pages are more and to make it less confusing
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: InputPage(),
      debugShowCheckedModeBanner: false,
    );
  }
} //TODO: now this page is for themes and i will make more different pages for different pages
