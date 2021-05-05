import 'package:flutter/material.dart';
import 'screens/calculator_home_page.dart';

void main() {
  runApp(BMIcalculator());
}

class BMIcalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFFFADBD8),
        accentColor: Color(0xFFFADBD8),
        scaffoldBackgroundColor: Color(0xFFFADBD8),
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: Color(0xFFE74C3C),
          ),
        ),
      ),
      home: CalculatorHomePage(),
    );
  }
}
