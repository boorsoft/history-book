import 'package:flutter/material.dart';
import 'package:theme_provider/theme_provider.dart';

ThemeOption themeOption = new ThemeOption();

// Switch theme
Color bgColorDefault = Colors.white;
Color bgColorDark = Color.fromRGBO(20, 20, 20, 1);
Color bgColor = Colors.white;

Color appBarColorDefault = Color.fromRGBO(127, 156, 163, 1);
Color appBarColorDark = Color.fromRGBO(13, 13, 13, 1);
Color appBarColor = themeOption.appBarColor;

Color textColor = themeOption.textColor;
Color textColorWhite = Colors.white;
Color textColorDefault = Colors.black87;

Color shadowColor = Color.fromRGBO(0, 0, 0, 0.6);
Color shadowColorDark = Color.fromRGBO(0, 0, 0, 0);
Color shadowColorDefault = Color.fromRGBO(0, 0, 0, 0.6);

Color timeColor;
Color timeColorDark = Colors.white;
Color timeColorDefault = Color.fromRGBO(127, 156, 163, 1);

TextStyle paragraphTextStyle = TextStyle(
  fontFamily: 'San Francisco',
  fontSize: 16.5,
  color: textColor,
  letterSpacing: 0.5,
  height: 1.5,
);

TextStyle paragraphBoldTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontFamily: 'San Francisco',
  fontSize: 16.5,
  color: textColor,
  letterSpacing: 0.5,
  height: 1.5,
);

class ThemeOption extends AppThemeOptions {
  final shadowColor, appBarColor, textColor;

  ThemeOption({this.shadowColor, this.appBarColor, this.textColor});
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
          border: Border.all(width: 1.0),
        ),
        child: _frameChild,
      ),
    );
  }
}
