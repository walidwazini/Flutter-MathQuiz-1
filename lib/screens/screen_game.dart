import 'package:flutter/material.dart';

class GameScreen extends StatelessWidget {
  //const GameScreen({Key? key}) : super(key: key);
  static final id = 'game_screen';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.lightGreenAccent,
      ),
    );
  }
}
