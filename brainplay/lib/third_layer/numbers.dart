import 'package:brainplay/functions.dart';
import 'package:flutter/material.dart';
import 'package:carousel_images/carousel_images.dart';

class Numbers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NumPage(),
    );
  }
}

class NumPage extends StatelessWidget {
  final numberList = numbers().cast<String>().toList();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: myAppBar(),
        body: Container(
          decoration: gradient(Colors.red, Colors.white),
          child: Column(
            children: <Widget>[
              SizedBox(height: 100),
              CarouselImages(
                scaleFactor: 0.7,
                listImages: numberList,
                height: 300.0,
                borderRadius: 30.0,
                verticalAlignment: Alignment.bottomCenter,
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

List<dynamic> numbers() {
  List myList = [];
  for (int i = 1; i < 11; i++) {
    String location = "assets/numbers/$i.gif";
    myList.add(location);
  }
  return myList;
}
