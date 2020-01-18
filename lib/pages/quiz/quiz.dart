import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {

  @override 
  _QuizState createState() => _QuizState();
}

Widget optionButton(String option) {
  return Padding(
    padding: EdgeInsets.symmetric(
      vertical: 15.0,
      horizontal: 20.0,
    ),
    child: MaterialButton(
      onPressed: () {},
      child: Text(
        "Вариант 1",
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'Blogger',
          fontSize: 16.0,
        ),
      ),
      color: Colors.green,
      splashColor: Colors.lightGreen,
      highlightColor: Colors.green[700],
      minWidth: 150.0, 
      height: 38.0,
    ),
  );
}

class _QuizState extends State<Quiz> {

  @override
  void initState() {
    super.initState();
  }

  Map<String, Color> buttonColor = {
    "a": Colors.green,
    "b": Colors.green,
    "c": Colors.green,
    "d": Colors.green,
  };

  // @override 
  // Widget loadJson() {
  //   return FutureBuilder(
  //     future: DefaultAssetBundle.of(context).loadString('assets/quiz.json'),
  //     builder: (context, snapshot) {
  //       List quizdata = json.decode(snapshot.data.toString());
  //       return Quiz();
  //     }
  //   );
  // }

  @override 
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: DefaultAssetBundle.of(context).loadString('assets/quiz.json'),
      builder: (context, snapshot) {
        List quizdata = json.decode(snapshot.data.toString());
        if (snapshot.hasData) {
          return Scaffold(
        appBar: AppBar(title: Text('Тестирование')),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Container(
                  padding: EdgeInsets.all(14.5),
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    quizdata[0]["1"],
                    style: TextStyle(
                      fontSize: 16.5,
                      fontFamily: 'Helvetica'
                    ),
                    ),
                ),
              ),
              Expanded(
                flex: 7,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      optionButton('a'),
                      optionButton('b'),
                      optionButton('c'),
                      optionButton('d'),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  child: Text(
                    "30", 
                    style: TextStyle(
                      color: Colors.green,
                      fontFamily: 'Blogger',
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
          ],
          )
        ),
      );
        } else {
          return Scaffold(body: Text('No data...'));
        }
      }
    );
    
  }
}