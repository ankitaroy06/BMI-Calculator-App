import 'package:flutter/material.dart';
import '../constants.dart';

class CardContentSlider extends StatelessWidget {
  CardContentSlider({@required this.heightValue, this.onChangeSliderFunc});

  final int heightValue;
  final Function onChangeSliderFunc;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          "Height",
          style: kBodyTextstyle,
        ),
        SizedBox(height: kHeightSizeBox),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              heightValue.toString(),
              style: kNumberTextstyle,
            ),
            Text(
              "cm",
              style: kBodyTextstyle,
            ),
          ],
        ),
        SizedBox(height: kHeightSizeBox),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            activeTrackColor: kAppbarTextColor,
            inactiveTrackColor: Color(0xFFFFFFFF),
            thumbColor: kAppbarTextColor,
            overlayColor: Color(0x2978281F),
            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
            overlayShape: RoundSliderThumbShape(enabledThumbRadius: 30.0),
          ),
          child: Slider(
            value: heightValue.toDouble(),
            min: kMinWeight,
            max: kMaxWeight,
            activeColor: kAppbarTextColor,
            onChanged: onChangeSliderFunc(),
          ),
        ),
      ],
    );
  }
}
