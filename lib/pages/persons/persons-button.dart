import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:theme_provider/theme_provider.dart';
import 'package:historybook/style.dart';

class PersonsButton extends StatelessWidget {
  final String _imagePath;
  final String _buttonText;
  final String _route;

  PersonsButton(this._imagePath, this._buttonText, this._route);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () => Navigator.of(context).pushNamed(_route),
        child: Column(children: [
          Container(
            width: 170.0,
            height: 220.0,
            padding: EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
                boxShadow: [
                  BoxShadow(
                      color: ThemeProvider.optionsOf<ThemeOption>(context)
                          .shadowColorOption,
                      blurRadius: 4.0,
                      offset: Offset(2.0, 2.0)),
                ],
              ),
              child: Container(
                  width: 170.0,
                  height: 220.0,
                  child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                      ),
                      child: Hero(
                        tag: _imagePath,
                        child: Image.asset(_imagePath, fit: BoxFit.cover),
                      ))),
            ),
          ),
          Container(
            transform: Matrix4.translationValues(0.0, -8.0, 0.0),
            alignment: Alignment.center,
            padding: EdgeInsets.all(2.0),
            width: 155.0,
            height: 38.0,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30.0),
                bottomRight: Radius.circular(30.0),
              ),
              boxShadow: [
                BoxShadow(
                    color: ThemeProvider.optionsOf<ThemeOption>(context)
                        .shadowColorOption,
                    blurRadius: 4.0,
                    offset: Offset(2.0, 2.0)),
              ],
            ),
            child: Text(
              _buttonText,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 13.0,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                        color: Colors.black87.withOpacity(0.5),
                        blurRadius: 3.5,
                        offset: Offset(1.3, 1.3)),
                  ]),
              textAlign: TextAlign.center,
            ),
          )
        ]),
      ),
    );
  }
}
