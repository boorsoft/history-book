import 'package:flutter/material.dart';
import 'package:historybook/style.dart';

class ParagraphButton extends StatelessWidget {
  final String _assetPath;
  final String _buttonText;
  final String _route;

  ParagraphButton(this._assetPath, this._buttonText, this._route);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        GestureDetector(
          onTap: () => Navigator.of(context).pushNamed(_route),
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.all(5.0),
                constraints: BoxConstraints.expand(
                  height: 180.0,
                ),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      boxShadow: [
                        BoxShadow(
                            color: shadowColor,
                            blurRadius: 5.0,
                            spreadRadius: 1.5,
                            offset: Offset(0.5, 1.5)),
                      ]),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(25.0),
                      child: Image.asset(
                        _assetPath,
                        fit: BoxFit.cover,
                      )),
                ),
              ),
              // Gradient on image
              Container(
                margin: EdgeInsets.all(5.0),
                height: 170.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    gradient: LinearGradient(
                        begin: FractionalOffset.topCenter,
                        end: FractionalOffset.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(0.0),
                          Colors.black.withOpacity(0.8)
                        ],
                        stops: [
                          0.3,
                          1.0
                        ])),
              ),
              Positioned(
                width: 280.0,
                left: 30.0,
                bottom: 30.0,
                child: Text(
                  _buttonText,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.5,
                      fontWeight: FontWeight.bold,
                      shadows: <Shadow>[
                        Shadow(
                          color: Colors.black.withOpacity(0.6),
                          blurRadius: 8.0,
                          offset: Offset(0, 0),
                        ),
                      ]),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
