import 'package:flutter/material.dart';

//Constant colors for Cards in InputPage
const Color activeCardColor = Color(0xFFFFFFFF);
const Color inActiveCardColor = Color(0xff8D8E98);
const Color maleCardColor = inActiveCardColor;
const Color femaleCardColor = inActiveCardColor;

//Constant textStyles for texts and Numbers all across
const textStyle = TextStyle(
    fontWeight: FontWeight.w400, fontSize: 20.0, color: Color(0xFF8D8E98));
const numStyle = TextStyle(
    fontWeight: FontWeight.w500, fontSize: 40.0, color: Color(0xFFFFFFFF));

//Constant values for slider min-max
const double min = 120.0;
const double max = 250.0;

//Variable for BMI
int heightValue = 180;
int weightValue = 85;
int ageValue = 20;
double bmi = 0.0;
