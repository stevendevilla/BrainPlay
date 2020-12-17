import 'package:flutter/material.dart';
import '../functions.dart';

class LanguagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFD9D9D9),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Container for the Text.
              Container(
                margin: EdgeInsets.symmetric(vertical: 60),
                child: Text(
                  'Please Select a Language',
                  style: TextStyle(fontFamily: 'MysteryQuest', fontSize: 30),
                ),
              ),
              pickerButton(context, 'ph', 'FILIPINO'),
              //Sizedbox for spacing in between buttons.
              SizedBox(
                height: 30,
              ),
              pickerButton(context, 'usa', 'ENGLISH')
            ],
          ),
        ),
      ),
    );
  }
}
