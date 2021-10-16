import 'package:flutter/material.dart';

import 'package:math_quiz_app/constants.dart';

class GameScreen extends StatefulWidget {
  //const GameScreen({Key? key}) : super(key: key);
  static final id = 'game_screen';

  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff1542bf), Colors.lightBlueAccent],
          )
        ),
        child: Column(
          children: [
            Row(
              children: [
                ScoreIndicator(label: 'HighScore',score: '0',),
                Spacer(),
                ScoreIndicator(label: 'Score',score: '0',),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ScoreIndicator extends StatelessWidget {

  final label;
  final score;

  ScoreIndicator({this.label, this.score});

  @override
  Widget build(BuildContext context) {
    return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
      children: [
      Text(label,  style: kScoreLabelText,),
      SizedBox(height: 20,),
      Text(score, style: TextStyle(fontSize: 40, color: Colors.black, fontFamily: 'Press Start 2P',fontWeight: FontWeight.bold),)
    ],);
  }
}
