// This file contains all the consatnt values used in the project such as height, width, margin, color, etc.

import 'package:flutter/material.dart';

const kAppbarTextColor = Color(0xFF78281F);
const kIconSize = 90.0;
const kBodyTextFontSize = 20.0;
const kBodyTextColor = Color(0xFFE74C3C);
const kNumberTextFontSize = 50.0;
const kHeightSizeBox = 10.0; //this separates the content of an Expanded Widget.
const kHeightBottomContainer = 30.0;
const kActiveCardColor = Color(0xFFF1948A);
const kInactiveCardColor = Color(0xFFF5B7B1);
const kMinWeight = 30.0;
const kMaxWeight = 250.0;

const kAppBarTextStyle = TextStyle(
  color: kAppbarTextColor,
  fontWeight: FontWeight.bold,
);

const kBodyTextstyle = TextStyle(
  fontSize: kBodyTextFontSize,
  color: kBodyTextColor,
);

const kNumberTextstyle = TextStyle(
  fontSize: kNumberTextFontSize,
  color: kBodyTextColor,
);

const kResultButtonStyle = TextStyle(
  fontSize: 25.0,
  fontWeight: FontWeight.bold,
  color: kAppbarTextColor,
);

const kResultBmiStatus = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 40.0,
  color: Colors.blue,
);

const kResultBmiNumber = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.bold,
  color: Colors.blue,
);
