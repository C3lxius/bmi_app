import 'dart:async';

import 'package:bmi_app/Views/inputPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, CupertinoPageRoute(builder: (_) => const InputPage()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Center(
            child: Icon(
              Icons.female,
              size: 200,
              color: Colors.white,
            ),
          ),
          const Center(
            child: Icon(
              Icons.male,
              size: 200,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
