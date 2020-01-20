import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'results.dart';

class Quiz extends StatefulWidget {

  _QuizState quizState = new _QuizState();

  int getCorrectAnswers() {
    return quizState.correctAnswers;
  }

  @override 
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List quizdata;
  
  Color displayColor = Colors.green;
  Color correct = Colors.lightBlue;
  Color wrong = Colors.red;

  int correctAnswers = 0;
  int i = 1;
  Timer timer;
  int startTime = 30;
  String showtimer = "30";
  var timerColor = Colors.green;

  bool _enabled = true;
  bool canceltimer = false;

  Map<String, Color> buttonColor = {
    "a": Colors.green,
    "b": Colors.green,
    "c": Colors.green,
    "d": Colors.green,
  };

  _QuizState() {
    correctAnswers = this.correctAnswers;
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override 
  void setState(fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

   void startTimer() async {
    const sec = const Duration(seconds: 1);
    timer = new Timer.periodic(sec, 
    (Timer t) {
      setState(
      () {
        timerColor = Colors.green;
        if (startTime < 1) {
          t.cancel();
          nextQuestion();
        } else if (canceltimer == true) {
          t.cancel();
        } else {
          startTime -= 1;
        }
        
        if (startTime == 0) {
          showtimer = "Время вышло!";
        } else {
          showtimer = startTime.toString();
        }
        if (startTime < 10) {
          timerColor = Colors.red;
        }
      });
      }
      );
  }

  void nextQuestion() {
    canceltimer = false;
    startTime = 30;
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
      startTimer();
  }

  void checkAnswer(String option) {
    if (quizdata[2][i.toString()] == quizdata[1][i.toString()][option]) {
      displayColor = correct;
      correctAnswers += 1;
    } else {
      displayColor = wrong;
    }
    setState(() {
      buttonColor[option] = displayColor;
      canceltimer = true;
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
          fontFamily: 'San Francisco',
          fontWeight: FontWeight.bold,
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
            children: <Widget>[
              SizedBox(height: 10.0),
              Container(
                padding: EdgeInsets.only(left: 10.0),
                alignment: Alignment.topLeft,
                child: Text('Вопрос № ' + i.toString() + "\\" + quizdata[0].length.toString(),
                style: TextStyle(
                  fontFamily: 'San Francisco',
                )
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10.0),
                alignment: Alignment.topLeft,
                child: Text('Количество правильных ответов: ' + correctAnswers.toString(),
                style: TextStyle(
                  fontFamily: 'San Francisco',
                )
                ),
              ),

              Expanded(
                flex: 3,
                child: Container(
                  padding: EdgeInsets.all(14.5),
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    quizdata[0][i.toString()],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.5,
                      fontFamily: 'San Francisco'
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
                    showtimer, 
                    style: TextStyle(
                      color: timerColor,
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