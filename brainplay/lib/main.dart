import 'package:brainplay/second_layer/ent_page.dart';
import 'package:brainplay/third_layer/alphabet.dart';
import 'package:brainplay/third_layer/math.dart';
import 'package:brainplay/third_layer/shapes.dart';
import 'package:flutter/material.dart';
import 'first_layer/main_page.dart';
import 'first_layer/language_page.dart';
import 'second_layer/learn_page.dart';
import 'second_layer/quiz_page.dart';
import 'first_layer/splash.dart';
import 'third_layer/alphabet.dart';
import 'third_layer/colors.dart';
import 'third_layer/math.dart';
import 'third_layer/numbers.dart';
import 'third_layer/shapes.dart';
import 'third_layer/songs.dart';
import 'third_layer/draw.dart';
import 'third_layer/stories.dart';

main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //routes to link different pages.
      initialRoute: '/',
      routes: {
        '/': (context) => Splash(),
        '/language': (context) => LanguagePage(),
        '/main': (context) => MainPage(),
        '/learn': (context) => LearnPage(),
        '/quiz': (context) => QuizPage(),
        '/ent': (context) => EntPage(),
        '/alphabet': (context) => Alphabet(),
        '/colors': (context) => ColorsPage(),
        '/math': (context) => Math(),
        '/numbers': (context) => Numbers(),
        '/shapes': (context) => Shapes(),
        '/draw': (context) => Draw(),
        '/songs': (context) => Songs(),
        '/stories': (context) => Stories(),
      },
    );
  }
}
