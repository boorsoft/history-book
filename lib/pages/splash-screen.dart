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
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
          children: [
            Expanded(
              flex: 10,
              child:
            Container( 
              alignment: Alignment.center,
              child:
            Text('История Кыргызстана',
            textAlign: TextAlign.center, 
            style: TextStyle(
              fontFamily: 'Aqum', 
              fontSize: 23.0,
              )
              ),
            ),
            ),
            Expanded(
              flex: 3,
              child:
            Container(
              alignment: Alignment.bottomCenter,
              child:
            Text(
          'Разработчики:',
          style: TextStyle(
            fontFamily: 'Blogger'
          ),
          textAlign: TextAlign.center,
            ),
            ),
            ),
            Expanded(
              flex: 3,
              child:
            Container(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child:
            Text('Акматов Азим\nДжумабек уулу Байдоолот\nДжолдошбеков Темирлан',
            style: TextStyle(
              fontFamily: 'Helvetica',
            ),
            textAlign: TextAlign.center,
            ),
              ),
            ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}