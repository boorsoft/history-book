import 'package:flutter/material.dart';
import 'package:historybook/style.dart';

class PersonHeader extends StatelessWidget {
  final String _image;
  final String _person;

  PersonHeader(this._image, this._person);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 380.0,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25.0),
                  bottomRight: Radius.circular(25.0)),
              boxShadow: [
                BoxShadow(
                    blurRadius: 10.0,
                    color: shadowColor,
                    offset: Offset(0.5, 1.0))
              ]),
          child: Hero(
              tag: _image,
              child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25.0),
                      bottomRight: Radius.circular(25.0)),
                  child: Image(image: AssetImage(_image), fit: BoxFit.cover))),
        ),
        Container(
            height: 380.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                gradient: LinearGradient(
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter,
                    colors: [
                      Colors.black.withOpacity(0.0),
                      Colors.black.withOpacity(0.75)
                    ],
                    stops: [
                      0.4,
                      1.0
                    ]))),
        Container(
            height: 380.0,
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Center(
              child: Text(
                _person,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    shadows: <Shadow>[
                      Shadow(
                        color: Colors.black.withOpacity(0.8),
                        blurRadius: 8.0,
                        offset: Offset(0, 0.5),
                      ),
                    ]),
                textAlign: TextAlign.center,
              ),
            )),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
            child: IconButton(
                icon: Icon(Icons.arrow_back),
                iconSize: 30.0,
                color: Colors.black54,
                onPressed: () => Navigator.pop(context))),
      ],
    );
  }
}
