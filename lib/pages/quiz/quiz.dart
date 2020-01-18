import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';

class GetJson extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: DefaultAssetBundle.of(context).loadString('assets/quiz.json'),
      builder: (context, snapshot) {
        List quizdata = json.decode(snapshot.data.toString());
        return Quiz(quizdata: quizdata);
      }
    );
  }
}

class Quiz extends StatefulWidget {
  var quizdata;

  Quiz({Key key, @required this.quizdata}) : super(key: key);

  @override 
  _QuizState createState() => _QuizState(quizdata);
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
  var quizdata;
  _QuizState(this.quizdata);

  Color displayColor = Colors.green;
  Color correct = Colors.lightBlue;
  Color wrong = Colors.red;

  int i = 1;
  int timer = 30;
  String showtimer;

  Map<String, Color> buttonColor = {
    "a": Colors.green,
    "b": Colors.green,
    "c": Colors.green,
    "d": Colors.green,
  }; 
  
  void nextQuestion() {
    setState(() {
      if (i < quizdata[0].length()) {
        i++;
      } else {

      }
      buttonColor["a"] = Colors.green;
      buttonColor["b"] = Colors.green;
      buttonColor["c"] = Colors.green;
      buttonColor["d"] = Colors.green;
      });
  }

  @override 
  Widget build(BuildContext context) {
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
                    quizdata[0][i.toString()],
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
  }
}