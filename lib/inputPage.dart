// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'customWidgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

class inputPage extends StatefulWidget {
  @override
  _inputPageState createState() => _inputPageState();
}

class _inputPageState extends State<inputPage> {
  Gender? genderType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          size: 35.0,
        ),
        title: Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Row(
                children: [
                  Expanded(
                    child: MyCard(
                      onPressed: () {
                        setState(() {
                          genderType = Gender.male;
                        });
                      },
                      color: Theme.of(context).colorScheme.primaryVariant,
                      child: MyInnerCard(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                        color: genderType == Gender.male
                            ? activeCardColor
                            : inActiveCardColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: MyCard(
                      onPressed: () {
                        setState(() {
                          genderType = Gender.female;
                        });
                      },
                      color: Theme.of(context).colorScheme.primaryVariant,
                      child: MyInnerCard(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                        color: genderType == Gender.female
                            ? activeCardColor
                            : inActiveCardColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: 10.0,
              ),
              child: SizedBox.expand(
                child: MyCard(
                  color: Theme.of(context).colorScheme.secondaryVariant,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'HEIGHT',
                        style: textStyle,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(heightValue.toString(), style: numStyle),
                          Text(
                            'cm',
                            style: textStyle,
                          )
                        ],
                      ),
                      Slider(
                        value: heightValue.toDouble(),
                        onChanged: (double newValue) {
                          setState(() {
                            heightValue = newValue.round();
                          });
                        },
                        min: min,
                        max: max,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Row(
                children: [
                  Expanded(
                    child: MyCard(
                      color: Theme.of(context).colorScheme.secondaryVariant,
                      child: BottomInnerCard(
                        onPressAdd: () {
                          setState(() {
                            weightValue++;
                          });
                        },
                        onPressSub: () {
                          setState(() {
                            weightValue--;
                          });
                        },
                        title: 'WEIGHT',
                        value: weightValue,
                        subtitle: '(kg)',
                      ),
                    ),
                  ),
                  Expanded(
                    child: MyCard(
                        color: Theme.of(context).colorScheme.secondaryVariant,
                        child: BottomInnerCard(
                          onPressAdd: () {
                            setState(() {
                              ageValue++;
                            });
                          },
                          onPressSub: () {
                            setState(() {
                              ageValue--;
                            });
                          },
                          title: 'AGE',
                          value: ageValue,
                        )),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: InkWell(
                onTap: () {
                  setState(() {
                    bmi = (weightValue / heightValue / heightValue) * 10000;
                    Navigator.pushNamed(context, '/next');
                  });
                },
                child: Container(
                  color: Color(0xFFEB1555),
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      'CALCULATE YOUR BMI',
                      style: textStyle.copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
