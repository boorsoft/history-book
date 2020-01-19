import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'results.dart';

class Quiz extends StatefulWidget {

  @override 
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List quizdata;
  
  Color displayColor = Colors.green;
  Color correct = Colors.lightBlue;
  Color wrong = Colors.red;

  int i = 1;
  int timer = 30;
  String showtimer;

  bool _enabled = true;

  Map<String, Color> buttonColor = {
    "a": Colors.green,
    "b": Colors.green,
    "c": Colors.green,
    "d": Colors.green,
  };

  @override
  void initState() {
    super.initState();
  }
  
  void nextQuestion() {
    setState(() {
      if (i < quizdata[0].length) {
        i++;
      } else {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => Results())
        );
      }
      buttonColor["a"] = Colors.green;
      buttonColor["b"] = Colors.green;
      buttonColor["c"] = Colors.green;
      buttonColor["d"] = Colors.green;
      _enabled = true;
      });
  }

  void checkAnswer(String option) {
    if (quizdata[2][i.toString()] == quizdata[1][i.toString()][option]) {
      displayColor = correct;
    } else {
      displayColor = wrong;
    }
    setState(() {
      buttonColor[option] = displayColor;
      Future.delayed(
        Duration(milliseconds: 1300),
        () => nextQuestion()
      );
    });
  }
  
  Widget optionButton(String option) {
    var _onPressed;
    if (_enabled) {
      _onPressed = () {
        checkAnswer(option);
        _enabled = false;
      };
    }
  return Padding(
    padding: EdgeInsets.symmetric(
      vertical: 15.0,
      horizontal: 20.0,
    ),
    child: MaterialButton(
      onPressed: _onPressed,
      disabledColor: buttonColor[option],
      child: Text(
        quizdata[1][i.toString()][option],
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'Blogger',
          fontSize: 16.0,
        ),
      ),
      color: buttonColor[option],
      splashColor: Colors.lightGreen,
      highlightColor: Colors.green[700],
      minWidth: 150.0, 
      height: 38.0,
    ),
  );
}

  
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Тестирование')),
        body: FutureBuilder(
          future: DefaultAssetBundle.of(context).loadString('assets/quiz.json'),
          builder: (context, snapshot) {
            quizdata = json.decode(snapshot.data.toString());
            if (snapshot.hasData) {
              return Container(
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
        );
          } else {
            return Text('Нет данных...');
          }      
          }    
        )
      );
  }
}