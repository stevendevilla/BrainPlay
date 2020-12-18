import 'package:flutter/material.dart';
import 'package:brainplay/functions.dart';
import 'package:show_up_animation/show_up_animation.dart';

class LearnPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: Container(
        decoration: gradient(Color(0xFFFE6D73), Colors.white),
        child: Column(
          children: [
            //SizedBox to push the buttons down.
            SizedBox(
              height: 50,
            ),
            //ShowUpList creates the animation for each button with duration and delay.
            ShowUpList(
              direction: Direction.vertical,
              animationDuration: Duration(milliseconds: 1000),
              delayBetween: Duration(milliseconds: 100),
              offset: -0.5,
              children: <Widget>[
                categoryButton(
                    context: context, text: 'Alphabet', route: 'alphabet'),
                categoryButton(
                    context: context, text: 'Numbers', route: 'numbers'),
                categoryButton(
                    context: context, text: 'Shapes', route: 'shapes'),
                categoryButton(
                    context: context, text: 'Colors', route: 'colors'),
                categoryButton(context: context, text: 'Math', route: 'math'),
              ],
            ),
            //SizedBox to push the buttons up.
            SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
