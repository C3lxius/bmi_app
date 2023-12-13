// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'constants.dart';

enum Gender { male, female }

//This reps the Card
class MyCard extends StatelessWidget {
  Color? color;
  Widget? child;
  Function()? onPressed;

  MyCard({Key? key, this.color, this.child, this.onPressed}) : super(key: key);

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

  const MyInnerCard(
      {Key? key, required this.icon, required this.label, this.color})
      : super(key: key);

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
        const SizedBox(
          height: 16.0,
        ),
        Text(
          label,
          style: TextStyle(fontFamily: 'bold', fontSize: 20.0, color: color),
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
      {Key? key,
      required this.title,
      required this.value,
      this.subtitle,
      this.onPressAdd,
      this.onPressSub})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Title Text
        Text(
          title,
          style: const TextStyle(fontFamily: 'bold', fontSize: 18),
        ),
        Text(
          subtitle != null ? subtitle.toString() : '',
          style: textStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
              onPressed: onPressSub,
              child: const Icon(
                Icons.remove,
                size: 40.0,
              ),
            ),

            // Value Text
            Text(
              value.toString(),
              style: numStyle,
            ),

            FloatingActionButton(
              onPressed: onPressAdd,
              child: const Icon(
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
