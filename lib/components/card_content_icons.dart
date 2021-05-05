import 'package:flutter/material.dart';
import '../constants.dart';

class CardsContentIcon extends StatelessWidget {
  CardsContentIcon({this.icon, this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: kIconSize,
          color: kBodyTextColor,
        ),
        SizedBox(height: kHeightSizeBox),
        Text(
          text,
          style: kBodyTextstyle,
        ),
      ],
    );
  }
}
