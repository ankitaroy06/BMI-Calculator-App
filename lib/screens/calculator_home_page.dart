import 'package:bmi_calculator/components/bottom_buttons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants.dart';
import '../components/cards.dart';
import '../components/card_content_icons.dart';
import '../components/card_content_slider.dart';
import '../components/card_content_weight_age.dart';
import 'result_page.dart';
import '../components/bottom_buttons.dart';
import 'brain.dart';

enum Gender { male, female }

class CalculatorHomePage extends StatefulWidget {
  @override
  _CalculatorHomePageState createState() => _CalculatorHomePageState();
}

class _CalculatorHomePageState extends State<CalculatorHomePage> {
  Gender selectedGender;
  int _height = 150;
  int _weight = 50;
  int _age = 40;

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
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Cards(
                      customCardColor: selectedGender == Gender.male
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      cardContent: CardsContentIcon(
                          icon: FontAwesomeIcons.mars, text: 'Male'),
                      gestureDetectionFunction: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: Cards(
                      customCardColor: selectedGender == Gender.female
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      cardContent: CardsContentIcon(
                          icon: FontAwesomeIcons.venus, text: 'Female'),
                      gestureDetectionFunction: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Cards(
                customCardColor: kActiveCardColor,
                cardContent: CardContentSlider(
                  heightValue: _height,
                  onChangeSliderFunc: (double newSelectedValue) {
                    setState(
                      () {
                        _height = newSelectedValue.round();
                      },
                    );
                  },
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Cards(
                      customCardColor: kActiveCardColor,
                      cardContent: CardContentWeightAge(
                        cardLabel: "WEIGHT",
                        value: _weight,
                        action: (actionData) {
                          setState(
                            () {
                              _weight += actionData;
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: Cards(
                      customCardColor: kActiveCardColor,
                      cardContent: CardContentWeightAge(
                        cardLabel: "AGE",
                        value: _age,
                        action: (actionData) {
                          setState(
                            () {
                              _weight += actionData;
                            },
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            BottomButtons(
              text: 'Calculate your BMI',
              gestureOnTap: () {
                Brain brain = Brain(height: _height, weight: _weight);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultPage(
                      result1: brain.getStatus(),
                      result2: brain.numberResult(),
                      result3: brain.getDescription(),
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
