import 'package:flutter/material.dart';
import 'package:theme_provider/theme_provider.dart';
import 'package:historybook/style.dart';

class ImageButton extends StatelessWidget {
  final String _assetPath;
  final String _buttonText;
  final String _route;

  ImageButton(this._assetPath, this._buttonText, this._route);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        GestureDetector(
          onTap: () => Navigator.of(context).pushNamed(_route),
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Container(
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    // borderRadius: BorderRadius.circular(30.0),
                    // border: Border.all(
                    //   color: Colors.black,
                    //   width: 1.2,
                    // ),
                  ),
                  constraints: BoxConstraints.expand(
                    height: 200.0,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      boxShadow: [
                        BoxShadow(
                          color: ThemeProvider.optionsOf<ThemeOption>(context)
                              .shadowColorOption,
                          blurRadius: 12.0,
                          spreadRadius: 1.5,
                          offset: Offset(1.0, 3.0),
                        ),
                      ],
                    ),
                    child: Hero(
                      tag: _assetPath,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(25.0),
                          child: Image.asset(_assetPath, fit: BoxFit.cover)),
                    ),
                  )),
              // Gradient on image
              Container(
                margin: EdgeInsets.all(8.0),
                height: 185.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    gradient: LinearGradient(
                        begin: FractionalOffset.topCenter,
                        end: FractionalOffset.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(0.0),
                          Colors.black.withOpacity(0.5)
                        ],
                        stops: [
                          0.3,
                          1.0
                        ])),
              ),
              // Text on image
              Positioned(
                width: 170.0,
                left: 45.0,
                bottom: 45.0,
                child: Text(
                  _buttonText,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 19.0,
                    fontWeight: FontWeight.bold,
                    shadows: <Shadow>[
                      Shadow(
                        color: Color.fromRGBO(0, 0, 0, 0.5),
                        blurRadius: 4.0,
                        offset: Offset(2.0, 2.0),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
