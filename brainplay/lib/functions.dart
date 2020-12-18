import 'package:flutter/material.dart';

//Function for the button inside language_page.
Container pickerButton(BuildContext context, country, String languageText) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 50),
    decoration: BoxDecoration(
      color: Colors.white,
      //Makes the border black.
      border: Border.all(
        width: 3,
        style: BorderStyle.solid,
        color: Colors.black,
      ),
    ),
    child: FlatButton(
      //Go to /main on pressed.
      padding: EdgeInsets.all(0),
      onPressed: () {
        Navigator.pushNamed(context, '/main');
      },
      //Creates a card with image and text.
      child: Card(
        child: ListTile(
          leading: Image.asset(
            'assets/$country.png',
          ),
          title: Text(
            languageText,
            style: spacedFont(size: 25),
          ),
        ),
      ),
    ),
  );
}

//FontStyle with spacing of 7, for language picker and title in appbar.
TextStyle spacedFont({double size}) {
  return TextStyle(
      fontFamily: 'Cinzel',
      color: Colors.black,
      fontSize: size,
      letterSpacing: 4,
      fontWeight: FontWeight.bold);
}

//appBar of the Application.
AppBar myAppBar() {
  return AppBar(
    //Back icon to Black
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
    backgroundColor: Colors.white,
    //Text inside of the appbar is centered.
    title: Center(
      child: Text('BrainPlay', style: spacedFont(size: 45)),
    ),
  );
}

//Gradient used for Background.
BoxDecoration gradient(Color first, Color second) {
  return BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [first, second],
    ),
  );
}

//Button style used in second_layer.
Container categoryButton({BuildContext context, String text, String route}) {
  //Container to wrap FlatButton.
  return Container(
    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    //to go to specified page on pressed.
    child: FlatButton(
      padding: EdgeInsets.all(0),
      onPressed: () {
        Navigator.pushNamed(context, '/$route');
      },
      //Container used to wrap Text and Styling.
      child: Container(
        //Creates black and round borders.
        decoration: BoxDecoration(
          color: Colors.white,
          //Makes the border black.
          border: Border.all(
            width: 3,
            style: BorderStyle.solid,
            color: Colors.black,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        alignment: Alignment.center,
        //Text at the center of Container.
        child: Text(
          text,
          style: TextStyle(
              fontSize: 40,
              fontFamily: 'MysteryQuest',
              fontWeight: FontWeight.w500),
        ),
      ),
    ),
  );
}

//Creates each page at main_page, context gets the current location of the page.
Container page(
    {BuildContext context,
    Color color,
    String image,
    String text,
    String buttonText,
    String pageName}) {
  //Container with a gradient as color.
  return Container(
    decoration: gradient(Colors.white, color),
    child: Column(
      children: [
        //Expand the three children with 4:1:1 ratio.
        Expanded(
          flex: 4,
          child: Image.asset('assets/$image.png'),
        ),
        Expanded(
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                  fontFamily: 'BalsamiqSans',
                  fontSize: 30,
                  fontWeight: FontWeight.w100),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Expanded(
          //Creates the Button.
          child: Container(
            margin: EdgeInsets.only(top: 0, right: 30, left: 30, bottom: 45),
            child: FlatButton(
              padding: EdgeInsets.all(0),
              onPressed: () {
                Navigator.pushNamed(context, '/$pageName');
              },
              child: Container(
                //Makes the borders round and black.
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
                alignment: Alignment.center,
                child: Text(
                  buttonText,
                  style: TextStyle(
                      fontSize: 30, fontFamily: 'Acme', letterSpacing: 5),
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
