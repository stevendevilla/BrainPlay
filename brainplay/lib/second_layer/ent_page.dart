import 'package:flutter/material.dart';
import 'package:brainplay/functions.dart';
import 'package:show_up_animation/show_up_animation.dart';

class EntPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: Container(
        decoration: gradient(Color(0xFF14A5D5), Colors.white),
        child: Column(
          children: [
            //SizedBox to push the buttons down.
            SizedBox(
              height: 50,
            ),
            //ShowUpList creates the animation for each button with duration and delay.
            ShowUpList(
              direction: Direction.horizontal,
              animationDuration: Duration(milliseconds: 1000),
              delayBetween: Duration(milliseconds: 100),
              offset: -0.2,
              children: <Widget>[
                categoryButton('Draw'),
                categoryButton('Songs'),
                categoryButton('Stories')
              ],
            ),
          ],
        ),
      ),
    );
  }
}
