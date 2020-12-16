import 'package:flutter/material.dart';
import 'package:page_view_indicator/page_view_indicator.dart';

class MainPage extends StatelessWidget {
  static const length = 3;
  final pageIndexNotifier = ValueNotifier<int>(0);

  static List<Container> data = [
    parallaxCards(Color(0xFFF7A4B7), 'red',
        'HI, my name is ____ \nchoose me if you want to', 'LEARN'),
    parallaxCards(Color(0xFF6ED1F2), 'blue',
        'HI, my name is ____ \nchoose me if you want', 'ENTERTAINMENT'),
    parallaxCards(Color(0xFFFFE8B3), 'yellow',
        'HI, my name is ____ \nchoose me if you want some', 'QUIZ')
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(
            child: Text(
              'BrainPlay',
              style: TextStyle(
                  fontFamily: 'MysteryQuest',
                  color: Colors.black,
                  fontSize: 45,
                  letterSpacing: 7),
            ),
          ),
        ),
        body: Stack(
          alignment: FractionalOffset.bottomCenter,
          children: <Widget>[
            PageView.builder(
              onPageChanged: (index) => pageIndexNotifier.value = index,
              itemCount: length,
              itemBuilder: (context, index) {
                return data[index];
                //Container(decoration: BoxDecoration(color: Colors.accents[index]),
              },
            ),
            sideScroll()
          ],
        ),
      ),
    );
  }

  PageViewIndicator sideScroll() {
    return PageViewIndicator(
      pageIndexNotifier: pageIndexNotifier,
      length: length,
      normalBuilder: (animationController, index) => ScaleTransition(
        scale: CurvedAnimation(
          parent: animationController,
          curve: Curves.ease,
        ),
        child: Icon(Icons.favorite, color: Colors.black87),
      ),
      highlightedBuilder: (animationController, index) => ScaleTransition(
        scale: CurvedAnimation(
          parent: animationController,
          curve: Curves.ease,
        ),
        child: Icon(Icons.star, color: Colors.white),
      ),
    );
  }
}

Container parallaxCards(
    Color color, String image, String text, String buttonText) {
  return Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Colors.white, color],
      ),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 4,
          //child: FittedBox(
          child: Image.asset('assets/$image.png'),
          //fit: BoxFit.fill,
          //),
        ),
        Expanded(
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                  fontFamily: 'MysteryQuest',
                  fontSize: 30,
                  fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Expanded(
          child: FlatButton(
            onPressed: () {},
            child: SizedBox(
              width: double.infinity,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    style: BorderStyle.solid,
                    color: Colors.black,
                  ),
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                margin:
                    EdgeInsets.only(top: 0, right: 20, left: 20, bottom: 45),
                alignment: Alignment.center,
                child: Text(
                  buttonText,
                  style: TextStyle(fontSize: 30, fontFamily: 'MysteryQuest'),
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
