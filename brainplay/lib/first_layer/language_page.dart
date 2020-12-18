import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../functions.dart';

class LanguagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.8), BlendMode.dstATop),
              image: AssetImage('assets/background.png'),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Container for the Text.
              Container(
                margin: EdgeInsets.symmetric(vertical: 60),
                child: Text(
                  'Please Select a Language',
                  style: TextStyle(
                      fontFamily: 'Acme',
                      fontSize: 30,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                            // bottomLeft
                            offset: Offset(-1.5, -1.5),
                            color: Colors.black),
                        Shadow(
                            // bottomRight
                            offset: Offset(1.5, -1.5),
                            color: Colors.black),
                        Shadow(
                            // topRight
                            offset: Offset(1.5, 1.5),
                            color: Colors.black),
                        Shadow(
                            // topLeft
                            offset: Offset(-1.5, 1.5),
                            color: Colors.black),
                      ]),
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
