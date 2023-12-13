import 'package:bmi_app/utilities/colors.dart';
import 'package:bmi_app/Views/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI App',
      theme: ThemeData(
        colorScheme: const ColorScheme(
          primary: Color(0xff1B1D21),
          secondary: Color(0xffffffff),
          brightness: Brightness.light,
          background: Color(0xffffffff),
          error: Colors.red,
          onBackground: Color(0xffffffff),
          onError: Colors.red,
          onPrimary: Color(0xffffffff),
          onSecondary: Color(0xffD4D4D8),
          onSurface: Colors.white,
          surface: Color(0xff1B1D21),
        ),
        sliderTheme: const SliderThemeData(
            activeTrackColor: Colors.white,
            inactiveTrackColor: Color(0xFF8D8E98),
            thumbColor: blue,
            overlayColor: Color.fromARGB(255, 37, 39, 44),
            trackHeight: 1.0,
            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 17.0),
            overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0)),
        scaffoldBackgroundColor: scaffoldColor,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
