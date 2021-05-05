import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButtons extends StatelessWidget {
  BottomButtons({@required this.text, @required this.gestureOnTap});

  final String text;
  final Function gestureOnTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: gestureOnTap(),
      child: Container(
        height: kHeightBottomContainer,
        color: kBodyTextColor,
        width: double.infinity,
        child: Text(
          text,
          style: kResultButtonStyle,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
