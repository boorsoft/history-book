import 'package:flutter/material.dart';

// Switch theme
Color bgColorDefault = Colors.white;
Color bgColorDark = Color.fromRGBO(18, 18, 18, 1);
Color bgColor = Colors.white;

Color appBarColorDefault = Color.fromRGBO(127, 156, 163, 1);
Color appBarColorDark = Color.fromRGBO(13, 13, 13, 1);
Color appBarColor = Color.fromRGBO(127, 156, 163, 1);

Color textColor = Colors.black87;
Color textColorWhite = Colors.white;
Color textColorDefault = Colors.black87;

Color shadowColor = Color.fromRGBO(0, 0, 0, 0.4);
Color shadowColorDark = Color.fromRGBO(0, 0, 0, 0);
Color shadowColorDefault = Color.fromRGBO(0, 0, 0, 0.4);

Color timeColor = Color.fromRGBO(127, 156, 163, 1);
Color timeColorDark = Colors.white;
Color timeColorDefault = Color.fromRGBO(127, 156, 163, 1);

TextStyle paragraphTextStyle = TextStyle(
  fontFamily: 'San Francisco',
  fontSize: 16.5,
  color: Colors.black87,
  letterSpacing: 0.5,
  height: 1.5,
);

TextStyle paragraphBoldTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontFamily: 'San Francisco',
  fontSize: 16.5,
  color: Colors.black87,
  letterSpacing: 0.5,
  height: 1.5,
);

void switchTheme() {
  if (textColor == textColorDefault) {
    textColor = textColorWhite;
  } else {
    textColor = textColorDefault;
  }

  if (bgColor == bgColorDefault) {
    bgColor = bgColorDark;
  } else {
    bgColor = bgColorDefault;
  }

  if (appBarColor == appBarColorDefault) {
    appBarColor = appBarColorDark;
  } else {
    appBarColor = appBarColorDefault;
  }

  if (shadowColor == shadowColorDefault) {
    shadowColor = shadowColorDark;
  } else {
    shadowColor = shadowColorDefault;
  }

  if (timeColor == timeColorDefault) {
    timeColor = timeColorDark;
  } else {
    timeColor = timeColorDefault;
  }

  if (paragraphTextStyle.color == textColorDefault) {
    paragraphTextStyle = TextStyle(
      fontFamily: 'San Francisco',
      fontSize: 15,
      color: textColorWhite,
      letterSpacing: 0.5,
      height: 1.5,
    );
  } else {
    paragraphTextStyle = TextStyle(
      fontFamily: 'San Francisco',
      fontSize: 15,
      color: textColorDefault,
      letterSpacing: 0.5,
      height: 1.5,
    );
  }

  if (paragraphBoldTextStyle.color == textColorDefault) {
    paragraphBoldTextStyle = TextStyle(
      fontFamily: 'San Francisco',
      fontWeight: FontWeight.bold,
      fontSize: 16.5,
      color: textColorWhite,
      letterSpacing: 0.5,
      height: 1.5,
    );
  } else {
    paragraphBoldTextStyle = TextStyle(
      fontFamily: 'San Francisco',
      fontWeight: FontWeight.bold,
      fontSize: 16.5,
      color: textColorDefault,
      letterSpacing: 0.5,
      height: 1.5,
    );
  }
}

class FrameStyle extends StatelessWidget {
  final Widget _frameChild;

  FrameStyle(this._frameChild);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(7.0),
        decoration: BoxDecoration(
          border: Border.all(width: 1.0, color: textColor),
        ),
        child: _frameChild,
      ),
    );
  }
}
