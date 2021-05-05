import 'package:bmi_calculator/components/bottom_buttons.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/cards.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.result1, @required this.result2, @required this.result3});

  final String result1;
  final String result2;
  final String result3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Calculator',
          style: kAppBarTextStyle,
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Text(
              'Your Result',
              style: kAppBarTextStyle,
            ),
          ),
          Expanded(
            flex: 5,
            child: Cards(
              customCardColor: kActiveCardColor,
              cardContent: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    result1,
                    style: kResultBmiStatus,
                  ),
                  Text(
                    result2,
                    style: kResultBmiNumber,
                  ),
                  Text(
                    result3,
                    style: kBodyTextstyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButtons(
            text: 'Re-Calculate your BMI',
            gestureOnTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
