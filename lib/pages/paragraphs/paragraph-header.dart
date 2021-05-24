import 'package:flutter/material.dart';
import 'package:theme_provider/theme_provider.dart';
import 'package:historybook/style.dart';

class ParagraphHeader extends StatelessWidget {
  final String _image;
  final String _title;
  final double height;

  ParagraphHeader(this._image, this._title, {this.height = 240.0});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
            height: height,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25.0),
                  bottomRight: Radius.circular(25.0)),
              boxShadow: [
                BoxShadow(
                    blurRadius: 10.0,
                    color: ThemeProvider.optionsOf<ThemeOption>(context)
                        .shadowColorOption,
                    offset: Offset(0.5, 1.0))
              ],
            ),
            child: Hero(
                tag: _image,
                child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25.0),
                        bottomRight: Radius.circular(25.0)),
                    child:
                        Image(image: AssetImage(_image), fit: BoxFit.cover)))),
        // Gradient on image
        Container(
          height: height,
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
                  ])),
        ),
        Container(
            height: height,
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Center(
              child: Text(
                _title,
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
