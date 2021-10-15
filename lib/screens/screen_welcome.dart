import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import 'package:math_quiz_app/constants.dart';

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
                    textAlign: TextAlign.center,
                    textStyle: kAnimationTextStyles,
                    colors: kColorizeAnimationColors,
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
