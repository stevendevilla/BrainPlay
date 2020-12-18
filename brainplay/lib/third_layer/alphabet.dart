import 'package:brainplay/functions.dart';
import 'package:flutter/material.dart';
import 'package:carousel_images/carousel_images.dart';

class Alphabet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<String> listImages = [
    'assets/letters/A.gif',
    'assets/letters/B.gif',
    'assets/letters/C.gif',
    'assets/letters/D.gif',
    'assets/letters/E.gif'
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Scaffold(
        appBar: myAppBar(),
        body: Container(
          decoration: gradient(
            Color(0xFFFE6D73),
            Colors.white,
          ),
          child: Column(
            children: <Widget>[
              SizedBox(height: 100),
              CarouselImages(
                scaleFactor: 0.3,
                listImages: listImages,
                height: 400.0,
                borderRadius: 50.0,
                onTap: (index) {
                  print('Tapped on page $index');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
