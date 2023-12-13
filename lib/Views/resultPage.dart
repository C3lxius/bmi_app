// ignore_for_file: file_names

import 'package:bmi_app/utilities/colors.dart';
import 'package:bmi_app/Views/inputPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utilities/constants.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({Key? key, required this.map}) : super(key: key);
  final Map map;

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  late final double bmi;
  late final bool male;
  late final int age;

  calBmi() {
    bmi =
        (widget.map['weight'] / (widget.map['height'] * widget.map['height'])) *
            10000;
    male = widget.map['gender'];
    age = widget.map['age'];
  }

  @override
  void initState() {
    calBmi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator', style: textStyle),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // SPacing
            const SizedBox(height: 24),

            // Top Card
            Text(
              'Your Result',
              style: textStyle.copyWith(fontSize: 32),
            ),

            // Mid Body Card
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 16),
                padding: const EdgeInsets.all(16),
                color: primaryVariant,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // BMI Verdict Text
                    Text(
                      bmi >= 18.5 && bmi <= 24.9
                          ? 'NORMAL'
                          : bmi < 18.5
                              ? 'Underweight'
                              : 'Overweight',
                      style: textStyle.copyWith(
                          color: bmi >= 18.5 && bmi <= 24.9 ? blue : Colors.red,
                          fontSize: 28),
                    ),

                    // BMI Text
                    Text(
                      bmi.toStringAsFixed(2),
                      style: textStyle.copyWith(fontSize: 72),
                    ),

                    // Verdict Extras
                    Text(
                      bmi >= 18.5 && bmi <= 24.9
                          ? 'You have a normal body weight. Good job!'
                          : bmi < 18.5
                              ? 'You are Underweight!\nPlease Take Care!'
                              : 'You are Overweight!\nPlease Take Note!',
                      textAlign: TextAlign.center,
                      style: textStyle,
                    ),

                    // Normal BMI Text
                    Text(
                      'Normal BMI range:',
                      style: textStyle.copyWith(color: const Color(0xFF8D8E98)),
                    ),

                    // Extra
                    const Text('18.5 - 24.9 kg/m2', style: textStyle),

                    // Save Button
                    // ElevatedButton(
                    //     onPressed: () {},
                    //     style: TextButton.styleFrom(
                    //         backgroundColor: scaffoldColor,
                    //         fixedSize: const Size(250, 65)),
                    //     child: const Text(
                    //       'Save Result',
                    //       style: textStyle,
                    //     )),
                  ],
                ),
              ),
            ),

            // Bottom Button
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        CupertinoPageRoute(builder: (_) => const InputPage()));
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: blue,
                      minimumSize: const Size(double.infinity, 70)),
                  child: const Text(
                    'Re-calculate your BMI',
                    style: textStyle,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
