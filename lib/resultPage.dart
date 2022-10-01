import 'package:flutter/material.dart';
import 'constants.dart';

class resultPage extends StatefulWidget {
  @override
  _resultPageState createState() => _resultPageState();
}

class _resultPageState extends State<resultPage> {
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
              margin: EdgeInsets.only(left: 40.0, top: 40.0),
              child: Text(
                'Your Result',
                style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Expanded(
            flex: 15,
            child: Container(
              margin: EdgeInsets.all(20.0),
              width: double.infinity,
              color: Theme.of(context).colorScheme.primaryVariant,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    bmi <= 24.9 ? 'NORMAL' : 'Overweight',
                    style: TextStyle(
                        color: bmi <= 24.9 ? Colors.green : Colors.red,
                        fontSize: 22.0,
                        fontWeight: FontWeight.w800),
                  ),
                  Text(
                    bmi.toStringAsFixed(2),
                    style:
                        TextStyle(fontSize: 100.0, fontWeight: FontWeight.w800),
                  ),
                  Text(
                    'Normal BMI range:',
                    style: TextStyle(
                        color: Color(0xFF8D8E98),
                        fontSize: 18.0,
                        fontWeight: FontWeight.w800),
                  ),
                  Text(
                    '18.5 - 24.9 kg/m2',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.w800),
                  ),
                  Text(
                    bmi <= 24.9
                        ? 'You have a normal body weight. Good job!'
                        : 'You are Obese! Take Care!',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.w800),
                  ),
                  TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color?>(
                              Color(0xFF191A2E)),
                          fixedSize: MaterialStateProperty.all<Size?>(
                              Size(250.0, 65.0))),
                      child: Text(
                        'SAVE RESULT',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      )),
                ],
              ),
            ),
          ),
          Expanded(
              flex: 2,
              child: InkWell(
                onTap: () {
                  setState(() {
                    Navigator.pop(context);
                  });
                },
                child: Container(
                  color: Color(0xFFEB1555),
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      'RE-CALCULATE YOUR BMI',
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
