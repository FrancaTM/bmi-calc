import 'package:bmi_calc/input_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(BMICalc());

class BMICalc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF090B22),
        scaffoldBackgroundColor: Color(0xFF090B22),
      ),
      home: InputPage(),
    );
  }
}


