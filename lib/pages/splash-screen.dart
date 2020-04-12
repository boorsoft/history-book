import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:historybook/pages/home/home.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Home(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 120.0),
            child: Image(
              image: AssetImage("assets/historybook-logo.png"),
              height: 250.0,
              width: 250.0,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            // transform: Matrix4.translationValues(0.0, -170.0, 0.0),
            alignment: Alignment.center,
            child: Text(
              "ИСТОРИЯ КЫРГЫЗСТАНА",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'San Francisco',
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Color.fromRGBO(127, 156, 163, 1),
                  shadows: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 2,
                      offset: Offset(0.5, 0.5),
                    ),
                  ]),
            ),
          ),
          SizedBox(height: 30.0),
          Text('Версия: 1.0.1'),
          // SizedBox(height: 15.0),
          // Text('Проверено Марат агаем'),
          SizedBox(height: 30.0),
          Text('По книге Осмонова Дж.'),
          Expanded(
              child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Padding(
                      padding: EdgeInsets.only(bottom: 15.0),
                      child: Image.asset("assets/boorsoft-logo-small.png"))))
        ],
      ),
    );
  }
}
