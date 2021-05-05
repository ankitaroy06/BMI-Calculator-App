# bmi_calculator

A new Flutter project.
PROJECT NAME: BMI Calculator
ABOUT: Body Mass Index Calculator measures body fat based on height and weight of human. Can check BMI by providing Gender, Height, Weight and Age.

DESCRIPTION:

  FOLDER: 
    components: 
      contain files ~ bottom_buttoms.dart, card_content_icons.dart, card_content_slider.dart, card_content_weight_age.dart, cards.dart.
    
    screens:
      contain files ~  calculator_home_page.dart, result_screen.dart, brain.dart.


  FILE: main.dart ~
    Entry point of the App is the main() in the main.dart file. In this function, main app is called and displayed. Here, we have use custom App theme, i.e., we set the theme of our app using "ThemeData" Widget. And in calling our app in home section namely "CalculatorHomePage()" function.

  FILE: constants.dart ~ 
    This file contains all the constants used in this app.

  FILE: calculator_home_page.dart ~
    This file imported few files they are, a constant file, card and its contents files. Class "CalculatorHomePage" extends a "Stateful" Widget. Used "Gender" of "enum" type variable which contains Gender value whether male or female. In "build" function returns the Scaffold. Scaffold contains, Appbar (contains title of app) and body (which contains five cards of gender, height, weight and age). A package of "Font Awesome Icons", to import the icons which are not provided by the material.dart package.

  FILE: cards.dart ~
    This decides the content and layout of the card. Class "Cards" extends "StatelessWidget". Also contains a Gesture Detector.

  FILE: card_content_icons.dart ~
    This file conatins the content of firts two cards which contains gender. Class "CardsContentIcon" extends "StatelessWidget". Tap on this cards are detected by a Gesture Detector.

  FILE: bottom_buttons.dart ~
    Class "BottomButtons" extends a Stateless Widget. Sets design to the bottom buttons of both the screens. Also contains a Gesture Detector to trap the taps. Routing is used for these buttons.

  FILE: card_content_slider.dart ~ 
    Class "CardContentSlider" extends a stateless widget. Contains a Slider Widget for using Slider in the height section.

  FILE: card_content_weight_age.dart ~ 
    Class "CardContentWeightAge" extends a stateless widget. It contains floating buttons which increases and decreases weight and age.

  FILE: brain.dart ~
    Class "Brain" contains the main calculations of the calculator and gives the respective result.

  FILE: result_page.dart ~
    Class "ResultPage" extends Stateless Widget which designs the Result Page (the second screen).