import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class WelcomeScreen extends StatelessWidget {
  //const WelcomeScreen({Key? key}) : super(key: key);
  static final id = 'welcome_screen';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/flutter icon.png',),
            fit: BoxFit.contain,alignment: Alignment.center
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Container(
            child: AnimatedTextKit(
              animatedTexts: [
                ColorizeAnimatedText('Quiz Game',
                    textStyle: TextStyle(fontSize: 39, fontWeight: FontWeight.bold),
                    colors:[Colors.red, Colors.deepPurple, Colors.cyanAccent, Colors.amber]
                ),
              ],
              repeatForever: true,
            ),
          ),
            Container(child: Text(
              'Tap to Start',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 27,
              ),
            ),)
        ],),
      ),
    );
  }
}
