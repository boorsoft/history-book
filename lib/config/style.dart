import 'package:flutter/material.dart';
import 'package:theme_provider/theme_provider.dart';

// Switch theme
Color bgColorDefault = Colors.white;
Color bgColorDark = Color(0xFF1e1e1f);
Color bgColor = Colors.white;

Color appBarColorDefault = Color.fromRGBO(127, 156, 163, 1);
Color appBarColorDark = Color(0xFF25282b);
Color appBarColor;

Color buttonsColor;
Color buttonsColorDefault = appBarColorDefault;
Color buttonsColorDark = appBarColorDark;

Color questionTextColor = Color(0xFF944c22);
Color questionContainerColor = Color(0xFFfaca70);

Color textColor;
Color textColorLight = Color(0xFFedeff0);
Color textColorDefault = Color(0xFF1e2124);

Color shadowColor;
Color shadowColorDark = Color.fromRGBO(0, 0, 0, 0);
Color shadowColorDefault = Color.fromRGBO(0, 0, 0, 0.4);

TextStyle paragraphTextStyle = TextStyle(
  fontSize: 16.0,
  letterSpacing: 0.5,
  height: 1.5,
);

TextStyle paragraphBoldTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 16.5,
  letterSpacing: 0.5,
  height: 1.5,
);

class ThemeOption extends AppThemeOptions {
  final shadowColorOption,
      appBarColorOption,
      textColorOption,
      buttonsColorOption,
      bgColorOption;

  ThemeOption(
      {this.shadowColorOption,
      this.appBarColorOption,
      this.textColorOption,
      this.buttonsColorOption,
      this.bgColorOption});
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
