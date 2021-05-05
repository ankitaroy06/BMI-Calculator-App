import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants.dart';

class CardContentWeightAge extends StatelessWidget {
  CardContentWeightAge(
      {@required this.cardLabel, @required this.value, @required this.action});

  final String cardLabel;
  final int value;
  final Function action;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          cardLabel,
          style: kBodyTextstyle,
        ),
        SizedBox(height: kHeightSizeBox),
        Text(
          value.toString(),
          style: kNumberTextstyle,
        ),
        SizedBox(height: kHeightSizeBox),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FloatingActionButton(
              backgroundColor: kAppbarTextColor,
              child: Icon(
                FontAwesomeIcons.plus,
                color: Colors.white,
              ),
              onPressed: action(1),
            ),
            SizedBox(width: kHeightSizeBox),
            FloatingActionButton(
              backgroundColor: kAppbarTextColor,
              child: Icon(
                FontAwesomeIcons.minus,
                color: Colors.white,
              ),
              onPressed: action(-1),
            ),
          ],
        ),
      ],
    );
  }
}
