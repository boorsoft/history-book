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
        Navigator.push(context, MaterialPageRoute(
          builder: (context) => Home(),
          ),
          );
      }
    );
  }

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ 
            Text(
          'Разработчики:',
          style: TextStyle(
            fontWeight: FontWeight.w300,
            fontFamily: 'Blogger'
          ),
          textAlign: TextAlign.center,
            ),
            Text('Акматов Азим\nДжумабек уулу Байдоолот\nДжолдошбеков Темирлан',
            style: TextStyle(
              fontWeight: FontWeight.w100,
              fontFamily: 'Blogger',
            ),
            textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}