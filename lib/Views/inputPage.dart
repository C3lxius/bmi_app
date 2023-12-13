// ignore_for_file: file_names

import 'package:bmi_app/utilities/colors.dart';
import 'package:bmi_app/Views/resultPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utilities/customWidgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../utilities/constants.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  bool male = true;

  //Variable for BMI
  int heightValue = 178;
  int weightValue = 75;
  int ageValue = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.sort,
          size: 35.0,
        ),
        title: const Text(
          'BMI Calculator',
          style: textStyle,
        ),
        // centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              //
              // Gender Row
              Expanded(
                flex: 3,
                child: Row(
                  children: [
                    // Male Card
                    Expanded(
                      child: MyCard(
                        onPressed: () {
                          setState(() {
                            male = true;
                          });
                        },
                        color: primaryVariant,
                        child: MyInnerCard(
                          icon: FontAwesomeIcons.male,
                          label: 'male',
                          color: male ? activeCardColor : inActiveCardColor,
                        ),
                      ),
                    ),

                    // Female Card
                    Expanded(
                      child: MyCard(
                        onPressed: () {
                          setState(() {
                            male = false;
                          });
                        },
                        color: primaryVariant,
                        child: MyInnerCard(
                          icon: FontAwesomeIcons.female,
                          label: 'female',
                          color: !male ? activeCardColor : inActiveCardColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Height Row
              Expanded(
                flex: 3,
                child: MyCard(
                  color: primaryVariant,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Height Title Text
                      const Text(
                        'Height',
                        style: textStyle,
                      ),

                      // Lil cm text
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(heightValue.toString(), style: numStyle),
                          const Text(
                            'cm',
                            style: textStyle,
                          )
                        ],
                      ),

                      // Slider
                      Slider(
                        value: heightValue.toDouble(),
                        onChanged: (double newValue) {
                          setState(() {
                            heightValue = newValue.round();
                          });
                        },
                        min: 120,
                        max: 300,
                      )
                    ],
                  ),
                ),
              ),

              // Weight Row
              Expanded(
                flex: 3,
                child: MyCard(
                  color: primaryVariant,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Weight Title Text
                      const Text(
                        'Weight',
                        style: textStyle,
                      ),

                      // Lil kg text
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(weightValue.toString(), style: numStyle),
                          const Text(
                            'kg',
                            style: textStyle,
                          )
                        ],
                      ),

                      // Slider
                      Slider(
                        value: weightValue.toDouble(),
                        onChanged: (double newValue) {
                          setState(() {
                            weightValue = newValue.round();
                          });
                        },
                        min: 40,
                        max: 200,
                      )
                    ],
                  ),
                ),
              ),

              Expanded(
                flex: 3,
                child: MyCard(
                    color: primaryVariant,
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

              // Bottom Button
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: ElevatedButton(
                    onPressed: () {
                      Map map = {
                        'weight': weightValue,
                        'height': heightValue,
                        'age': ageValue,
                        'gender': male,
                      };
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (_) => ResultPage(
                                    map: map,
                                  )));
                    },
                    style: TextButton.styleFrom(
                        backgroundColor: blue,
                        minimumSize: const Size(double.infinity, 70)),
                    child: const Text(
                      'Compute BMI',
                      style: textStyle,
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
