import 'package:flutter/material.dart';
import 'constants.dart';

enum Gender { male, female }

//This reps the Card
class MyCard extends StatelessWidget {
  Color? color;
  Widget? child;
  Function()? onPressed;

  MyCard({this.color, this.child, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: onPressed,
          child: child),
    );
  }
}

//This reps the Column within the Card
class MyInnerCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color? color;

  MyInnerCard({required this.icon, required this.label, this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 70.0,
          color: color,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          label,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20.0, color: color),
        )
      ],
    );
  }
}

//This reps the Column within the Bottom Card
class BottomInnerCard extends StatelessWidget {
  final String title;
  final int value;
  final String? subtitle;
  Function()? onPressAdd;
  Function()? onPressSub;

  BottomInnerCard(
      {required this.title,
      required this.value,
      this.subtitle,
      this.onPressAdd,
      this.onPressSub});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: textStyle,
            ),
            Text(
              subtitle != null ? subtitle.toString() : '',
              style: textStyle,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              value.toString(),
              style: numStyle,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
              onPressed: onPressSub,
              child: Icon(
                Icons.remove,
                size: 40.0,
              ),
            ),
            FloatingActionButton(
              onPressed: onPressAdd,
              child: Icon(
                Icons.add,
                size: 40.0,
              ),
            ),
          ],
        )
      ],
    );
  }
}
