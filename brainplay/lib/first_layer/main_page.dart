import 'package:flutter/material.dart';
import 'package:page_view_indicator/page_view_indicator.dart';
import '../functions.dart';

class MainPage extends StatelessWidget {
  static const length = 3;
  final pageIndexNotifier = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    //List of Containers to be inserted inside of each page using the function page.
    List<Container> data = [
      page(
          context: context,
          color: Color(0xFFF7A4B7),
          image: 'red',
          text: 'HI, my name is ____ \nchoose me if you want to',
          buttonText: 'LEARN',
          pageName: 'learn'),
      page(
          context: context,
          color: Color(0xFF6ED1F2),
          image: 'blue',
          text: 'HI, my name is ____ \nchoose me if you want',
          buttonText: 'ENTERTAINMENT',
          pageName: 'ent'),
      page(
          context: context,
          color: Color(0xFFFFE8B3),
          image: 'yellow',
          text: 'HI, my name is ____ \nchoose me if you want some',
          buttonText: 'QUIZ',
          pageName: 'quiz')
    ];

    //Creates Stack with indicator at the bottom center.
    return MaterialApp(
        home: Scaffold(
      appBar: myAppBar(),
      body: Stack(
        alignment: FractionalOffset.bottomCenter,
        children: <Widget>[
          PageView.builder(
            onPageChanged: (index) => pageIndexNotifier.value = index,
            itemCount: length,
            itemBuilder: (context, index) {
              return data[index];
            },
          ),
          sideScroll()
        ],
      ),
    ));
  }

  //This code change the indicator icon on side scroll.
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
