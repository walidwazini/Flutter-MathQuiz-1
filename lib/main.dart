import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './screens/screen_game.dart';
import './screens/screen_welcome.dart';

void main() {
  runApp(MathQuizApp());
}

class MathQuizApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id : (context) => WelcomeScreen(),
        GameScreen.id : (context) => GameScreen(),

      },
      title: 'Math Quiz',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: WelcomeScreen(),
    );
  }
}
