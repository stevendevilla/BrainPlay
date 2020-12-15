import 'package:flutter/material.dart';
import 'package:simple_coverflow/simple_coverflow.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  static List<Container> data = [
    parallaxCards(Color(0xFFF7A4B7), 'red', 'I am Red!\n Text Here', 'LEARN'),
    parallaxCards(
        Color(0xFF6ED1F2), 'blue', 'I am BLue!\n Text Here', 'ENTERTAINMENT'),
    parallaxCards(
        Color(0xFFFFE8B3), 'yellow', 'I am Yellow!\n Text Here', 'QUIZZ')
  ];

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        backgroundColor: Colors.white24,
        appBar: new AppBar(
          title: new Text('BrainPlay'),
        ),
        body: new CoverFlow(
          dismissibleItems: false,
          itemBuilder: widgetBuilder,
          currentItemChangedCallback: (int index) {
            print(index);
          },
        ),
      ),
    );
  }

  Widget widgetBuilder(BuildContext context, int index) {
    return data[index % data.length];
  }
}

Container parallaxCards(
    Color color, String image, String text, String buttonText) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(20),
      ),
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
              style: TextStyle(fontFamily: 'MysteryQuest', fontSize: 25),
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
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                margin: EdgeInsets.all(20),
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
