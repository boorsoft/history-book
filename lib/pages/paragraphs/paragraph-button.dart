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
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          onTap: () => Navigator.of(context).pushNamed(_route),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(5.0),
                // decoration: BoxDecoration(
                //   // border: Border.all(
                //   //   color: Colors.black,
                //   //   width: 1.7,
                //   //   ),
                // ),
                constraints: BoxConstraints.expand(
                  height: 120.0,
                ),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      boxShadow: [
                        BoxShadow(
                            color: shadowColor,
                            blurRadius: 5.0,
                            spreadRadius: 1.5,
                            offset: Offset(0.5, 1.5)),
                      ]),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: Image.asset(
                        _assetPath,
                        fit: BoxFit.cover,
                        alignment: Alignment.center,
                      )),
                ),
              ),
              //   SizedBox(
              //   height: 120.0,
              //   child: Container(
              //     decoration: BoxDecoration(
              //       border: Border.all(
              //         color: Colors.black,
              //         width: 1.2,
              //       ),
              //       color: Colors.teal.withOpacity(0.35),
              //     ),
              //   ),
              // ),
              Container(
                padding: EdgeInsets.fromLTRB(6.0, 0.0, 6.0, 0.0),
                child: Center(
                  child: Text(_buttonText,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.5,
                          fontWeight: FontWeight.bold,
                          shadows: <Shadow>[
                            Shadow(
                              color: Colors.black,
                              blurRadius: 8.0,
                              offset: Offset(0, 0),
                            ),
                          ])),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
