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
    Future.delayed(Duration(seconds: 3), () {
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
          Image(
            image: AssetImage("assets/historybook-logo.png"),
            height: 250.0,
            width: 250.0,
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
          Text('Версия: 1.0.0'),
          SizedBox(height: 15.0),
          Text('Проверено Марат агаем'),
          SizedBox(height: 20.0),
          Container(
              alignment: Alignment.bottomCenter,
              child: Text(
                "Разработчики:",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'San Francisco',
                  fontSize: 13.0,
                  fontWeight: FontWeight.bold,
                ),
              )),
          Container(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 5.0),
              alignment: Alignment.bottomCenter,
              child: Text(
                "Акматов Азим\nЖумабек уулу Байдоолот\nДжолдошбеков Темирлан",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Helvetica',
                  fontSize: 13.0,
                ),
              )),
        ],
      ),
    );
  }
}
