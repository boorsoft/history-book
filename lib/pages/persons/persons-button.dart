import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class PersonsButton extends StatelessWidget {
  final String _imagePath;
  final String _buttonText;
  final String _route;

  PersonsButton(this._imagePath, this._buttonText, this._route);
  
  @override 
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          onTap: () => Navigator.of(context).pushNamed(_route),
          child: Container(
            padding: EdgeInsets.all(8.0),
            constraints: BoxConstraints.expand(height: 270),
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                  color: Colors.black87,
                  blurRadius: 4.0,
                  offset: Offset(2.0, 2.0)
                ),
                ],
              ),
              child: Container(
                child: Image.asset(_imagePath, fit: BoxFit.cover),
              ),
            ),
          ),
        ),
        Center(
          child:  
            Container(
            child: Text(_buttonText,
            style: TextStyle(
              fontSize: 22.0,
              color: Colors.white,
              shadows: [
                Shadow(
                  color: Colors.black87,
                  blurRadius: 2.0,
                  offset: Offset(2.0, 2.0),
                ),
              ],
            ),
            ),
          ),
        ),
      ],
    );
  }
}