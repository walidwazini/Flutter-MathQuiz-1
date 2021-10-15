import 'package:flutter/material.dart';

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
        crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
          Text('HighScore',  style: TextStyle(fontSize: 30, color: Colors.yellowAccent),),
          SizedBox(height: 20,),
          Text('0', style: TextStyle(fontSize: 30, color: Colors.black),)
        ],),
      ),
    );
  }
}
