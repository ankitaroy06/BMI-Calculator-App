import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  Cards(
      {@required this.customCardColor,
      this.cardContent,
      this.gestureDetectionFunction});

  final Color customCardColor;
  final Widget cardContent;
  final Function gestureDetectionFunction;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: gestureDetectionFunction(),
      child: Container(
        child: cardContent,
        margin: EdgeInsets.all(20.0),
        height: 200.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: customCardColor,
        ),
      ),
    );
  }
}
