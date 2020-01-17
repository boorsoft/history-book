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
    Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) => Home(),
          ),
          );
      }
    );
  }

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
      Expanded(
        flex: 10,
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(top: 50.0),
          child: Text(
            "История Кыргызстана",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Aqum',
              fontSize: 18.0,
            ),
          ),
        ),
      ),
      Expanded(
        flex: 7,
        child: Container(
          alignment: Alignment.bottomCenter,
          child: Text(
            "Разработчики:",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Blogger',
              fontSize: 13.0,
            ),
          )
        ),
      ),
        Container(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 5.0),
          alignment: Alignment.bottomCenter,
          child: Text(
            "Акматов Азим\nДжумабек уулу Байдоолот\nДжолдошбеков Темирлан",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Helvetica',
              fontSize: 13.0,
            ),
          )
        ),
    ],
    ),
    );
  }
}