import 'package:flutter/material.dart';
import 'inputPage.dart';
import 'resultPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme(
            primary: Color(0xff0A0D22),
            primaryVariant: Color(0xff1D1F33),
            secondary: Color(0xff1D1F33),
            secondaryVariant: Color(0xff111428),
            brightness: Brightness.light,
            background: Color(0xffffffff),
            error: Colors.red,
            onBackground: Color(0xffffffff),
            onError: Colors.red,
            onPrimary: Color(0xffffffff),
            onSecondary: Color(0xffD4D4D8),
            onSurface: Color(0xff457BE0),
            surface: Color(0xff457BE0)),
        sliderTheme: SliderThemeData(
            activeTrackColor: Colors.white,
            inactiveTrackColor: Color(0xFF8D8E98),
            thumbColor: Color(0xFFEB1555),
            overlayColor: Color(0x52EB1555),
            trackHeight: 1.0,
            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 17.0),
            overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0)),
        scaffoldBackgroundColor: Color(0xff0A0D22),
        textTheme: TextTheme(
          bodyText2: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => inputPage(),
        '/next': (context) => resultPage(),
      },
    );
  }
}
