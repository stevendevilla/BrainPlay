import 'package:brainplay/second_layer/ent_page.dart';
import 'package:flutter/material.dart';
import 'first_layer/main_page.dart';
import 'first_layer/language_page.dart';
import 'second_layer/learn_page.dart';
import 'second_layer/quiz_page.dart';
import 'first_layer/splash.dart';

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
        '/ent': (context) => EntPage()
      },
    );
  }
}
