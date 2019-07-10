import 'package:flutter/material.dart';
import 'package:navigation_demo_starter/screen0.dart';
import 'package:navigation_demo_starter/screen2.dart';
import 'screen1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Screen0(),
        'screen1': (context) => Screen1(),
        'screen2': (context) => Screen2()
      },
    );
  }
}
