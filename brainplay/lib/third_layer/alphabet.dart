import 'package:brainplay/functions.dart';
import 'package:flutter/material.dart';
import 'package:carousel_images/carousel_images.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';

class Alphabet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AlphaPage(),
    );
  }
}

class AlphaPage extends StatelessWidget {
  //65-91 Capital
  //97-123 Small
  final capitalLetters = letters(start: 65, end: 91).cast<String>().toList();
  final smallLetters = letters(start: 97, end: 123).cast<String>().toList();

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
          child: Container(
            child: DefaultTabController(
              length: 2,
              child: Column(
                children: <Widget>[
                  ButtonsTabBar(
                    backgroundColor: Colors.blue[600],
                    unselectedBackgroundColor: Colors.white,
                    labelStyle: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    unselectedLabelStyle: TextStyle(
                        color: Colors.blue[600], fontWeight: FontWeight.bold),
                    borderWidth: 1,
                    unselectedBorderColor: Colors.blue[600],
                    radius: 100,
                    tabs: [
                      Tab(
                        //icon: Icon(Icons.directions_car),
                        text: "ABC",
                      ),
                      Tab(
                        //icon: Icon(Icons.directions_transit),
                        text: "abc",
                      ),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      children: <Widget>[
                        CarouselImages(
                          scaleFactor: 0.5,
                          listImages: capitalLetters,
                          height: 400.0,
                          borderRadius: 50.0,
                          onTap: (index) {
                            print('Tapped on page $index');
                          },
                        ),
                        CarouselImages(
                          scaleFactor: 0.5,
                          listImages: smallLetters,
                          height: 400.0,
                          borderRadius: 50.0,
                          onTap: (index) {
                            print('Tapped on page $index');
                          },
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

List<dynamic> letters({int start, int end}) {
  List myList = [];
  for (int i = start; i < end; i++) {
    String letter = String.fromCharCode(i);
    if (end < 92) {
      String location = "assets/capital_letters/$letter.gif";
      myList.add(location);
    } else {
      String location = "assets/small_letters/$letter.gif";
      myList.add(location);
    }
  }
  return myList;
}
