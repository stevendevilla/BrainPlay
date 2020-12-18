import 'package:flutter/material.dart';
import 'package:brainplay/functions.dart';

class Shapes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: Container(
        decoration: gradient(Color(0xFFFE6D73), Colors.white),
        child: Text('Shapes!'),
      ),
    );
  }
}
