import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
          child: Container(
            width: 170.0,
            height: 220.0,
            padding: EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                boxShadow: [
                  BoxShadow(
                  color: Colors.black87,
                  blurRadius: 4.0,
                  offset: Offset(2.0, 2.0)
                ),
                ],
              ),
              child: Container(
                width: 170.0,
                height: 220.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Image.asset(_imagePath, fit: BoxFit.cover),
                  )
              ),
            ),
          ),
        ),
    );
  }
}