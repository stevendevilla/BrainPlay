import 'package:flutter/material.dart';
import 'package:brainplay/functions.dart';

class QuizPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myAppBar(),
        body: Container(
          decoration: gradient(Color(0xFFFFE8B3), Colors.white),
        ));
  }
}
