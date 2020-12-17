import 'package:flutter/material.dart';
import 'package:custom_splash/custom_splash.dart';
import 'package:brainplay/first_layer/language_page.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Create a Custom Splash with fade-in animation.
    return CustomSplash(
      imagePath: 'assets/brainplay.png',
      backGroundColor: Colors.black,
      animationEffect: 'fade-in',
      logoSize: 200,
      home: LanguagePage(), //Redirects to LanguagePage()
      duration: 3000,
      type: CustomSplashType.StaticDuration, //Duration only
    );
  }
}
