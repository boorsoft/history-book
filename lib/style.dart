import 'package:flutter/material.dart';

// Switch theme
Color bgColorDefault = Colors.white;
Color bgColorDark = Color.fromRGBO(16, 16, 16, 1);
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

final paragraphTextStyle = TextStyle(
  fontFamily: 'San Francisco',
  fontSize: 16.5,
  color: textColor,
  letterSpacing: 0.5,
  height: 1.5,
);

final paragraphBoldTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontFamily: 'San Francisco',
  fontSize: 16.5,
  color: textColor,
  letterSpacing: 0.5,
  height: 1.5,
);

void switchTheme() {
  if (bgColor == bgColorDefault &&
      appBarColor == appBarColorDefault &&
      textColor == textColorDefault &&
      shadowColor == shadowColorDefault &&
      timeColor == timeColorDefault) {
    bgColor = bgColorDark;
    appBarColor = appBarColorDark;
    textColor = textColorWhite;
    shadowColor = shadowColorDark;
    timeColor = timeColorDark;
  } else {
    bgColor = bgColorDefault;
    appBarColor = appBarColorDefault;
    textColor = textColorDefault;
    shadowColor = shadowColorDefault;
    timeColor = timeColorDefault;
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
          border: Border.all(width: 1.0, color: Colors.black87),
        ),
        child: _frameChild,
      ),
    );
  }
}
