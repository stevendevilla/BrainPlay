import 'package:flutter/material.dart';
import 'package:brainplay/functions.dart';

class Stories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: Container(
        decoration: gradient(Color(0xFF14A5D5), Colors.white),
        child: Text('Stories!'),
      ),
    );
  }
}
