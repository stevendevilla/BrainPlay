import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFD9D9D9),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 60),
                child: Text(
                  'Please Select a Language',
                  style: TextStyle(fontFamily: 'MysteryQuest', fontSize: 30),
                ),
              ),
              button('ph', 'FILIPINO'),
              SizedBox(
                height: 30,
              ),
              button('usa', 'ENGLISH'),
            ],
          ),
        ),
      ),
    );
  }

  FlatButton button(String country, String languageText) {
    return FlatButton(
      onPressed: () {},
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            width: 3,
            style: BorderStyle.solid,
            color: Colors.black,
          ),
        ),
        child: Card(
          child: ListTile(
            leading: Image.asset(
              'assets/$country.png',
            ),
            title: Text(
              languageText,
              style: TextStyle(
                  fontFamily: 'MysteryQuest', fontSize: 25, letterSpacing: 7),
            ),
          ),
        ),
      ),
    );
  }
}
