import 'package:flutter/material.dart';

import './screens/screen_welcome.dart';

void main() {
  runApp(MathQuizApp());
}

class MathQuizApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id : (context) => WelcomeScreen()
      },
      title: 'Math Quiz',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: WelcomeScreen(),
    );
  }
}
