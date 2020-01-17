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
            mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container( 
              padding: EdgeInsets.fromLTRB(0, 0, 0, 300.0),
              child:
            Text('История Кыргызстана',
            textAlign: TextAlign.center, 
            style: TextStyle(
              fontFamily: 'Aqum', 
              fontSize: 23.0,
              )
              ),
            ),
            Container(
              child:
            Text(
          'Разработчики:',
          style: TextStyle(
            
            fontFamily: 'Blogger'
          ),
          textAlign: TextAlign.center,
            ),
            ),
            Container(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child:
            Text('Акматов Азим\nДжумабек уулу Байдоолот\nДжолдошбеков Темирлан',
            style: TextStyle(
<<<<<<< HEAD
            
              fontFamily: 'Blogger',
=======
              fontFamily: 'Helvetica',
>>>>>>> 272747f5e9c163dfcfabd274c7bab1696257f8cd
            ),
            textAlign: TextAlign.center,
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