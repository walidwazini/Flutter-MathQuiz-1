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
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(''),
            fit: BoxFit.cover,
          )
        ),
        child: Column(children: [
          Container(
            child: AnimatedTextKit(
              animatedTexts: [
                ColorizeAnimatedText('Quiz Game',
                    textStyle: TextStyle(),
                    colors:[Colors.red, Colors.deepPurple]
                ),
              ],
            ),
          )
        ],),
      ),
    );
  }
}
