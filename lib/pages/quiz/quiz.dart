import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:historybook/style.dart';

class GetJson extends StatelessWidget {
  List quizdata;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: DefaultAssetBundle.of(context).loadString(QuizState.getJson),
        builder: (context, snapshot) {
          quizdata = json.decode(snapshot.data.toString());
          print(quizdata);
          if (snapshot.hasData) {
            return Quiz();
          } else {
            return Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                  Text('Идёт загрузка данных...',
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: textColor)),
                  CircularProgressIndicator()
                ]));
          }
        });
  }
}

class Quiz extends StatefulWidget {
  @override
  QuizState createState() => QuizState();
}

class QuizState extends State<Quiz> {
  static GetJson json = new GetJson();

  List quizdata = json.quizdata; // Список вопросов

  List urnList = []; // Список уникальных рандомных чисел

  static String getJson;

  Color displayColor = appBarColor; // Какой цвет отображать на кнопке
  Color correct = Colors.lightBlue; // Цвет для правильного ответа
  Color wrong = Colors.red; // Цвет для неправлиьного ответа

  int correctAnswers = 0; // Кол-во правильных ответов
  int i = 1; // Итератор для вопросов
  int questionNum = 1; // Номер вопроса для отображения
  Timer timer;
  int startTime = 30;
  String showtimer = "30"; // Таймер, что б выводить на экран
  var timerColor = timeColor;

  bool _enabled = true; // Активна ли кнопка
  bool _nextButtonEnabled = false; // Активна ли кнопка "Следующий"
  bool canceltimer = false; // Отмена таймера

  // Цвета кнопок
  Map<String, Color> buttonColor = {
    "a": appBarColor,
    "b": appBarColor,
    "c": appBarColor,
    "d": appBarColor
  };

  @override
  void initState() {
    // startTimer();
    super.initState();
    // randomArray();
  }

  @override
  void setState(fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  // void startTimer() async {
  //   const sec = const Duration(seconds: 1);
  //   timer = new Timer.periodic(sec, (Timer t) {
  //     setState(() {
  //       timerColor = timeColor;
  //       if (startTime < 1) {
  //         t.cancel();
  //         nextQuestion();
  //       } else if (canceltimer == true) {
  //         t.cancel();
  //       } else {
  //         startTime -= 1;
  //       }

  //       if (startTime == 0) {
  //         showtimer = "Время вышло!";
  //       } else {
  //         showtimer = startTime.toString();
  //       }
  //       if (startTime < 10) {
  //         timerColor = Colors.red;
  //       }
  //     });
  //   });
  // }

  // void randomArray() {
  //   var riSet = <int>{}; // Сэт рандомных чисел
  //   var random = new Random();

  //   for (int i = 1; i < quizdata[0].length; i++) {
  //     var randomNum = random.nextInt(quizdata[0].length);
  //     riSet.add(randomNum);
  //     if (riSet.length < quizdata[0].length) {
  //       i = 1;
  //     }
  //   }
  //   urnList = riSet.toList();
  //   print(uriList);
  // }

  void nextQuestion() {
    canceltimer = false;
    startTime = 30;
    _nextButtonEnabled = false; // Отключаем кнопку "следующий"
    setState(() {
      if (i < quizdata[0].length) {
        i++;
        questionNum++;
      } else {
        _showDialog();
      }
      // Сбрасываем цвета
      buttonColor["a"] = appBarColor;
      buttonColor["b"] = appBarColor;
      buttonColor["c"] = appBarColor;
      buttonColor["d"] = appBarColor;
      _enabled = true; // Активируем кнопки
    });
    // startTimer();
  }

  void checkAnswer(String option) {
    if (quizdata[2][i.toString()] == quizdata[1][i.toString()][option]) {
      displayColor =
          correct; // Выводим цвет синий - если правильно, красный - если неправильно
      correctAnswers += 1; // Увеличиваем кол-во правильных ответов
    } else {
      displayColor = wrong;
      setState(() {
        // Показываем правильный ответ, если ответили неправильно
        if (quizdata[1][i.toString()]['a'] == quizdata[2][i.toString()]) {
          buttonColor['a'] = correct;
        } else if (quizdata[1][i.toString()]['b'] ==
            quizdata[2][i.toString()]) {
          buttonColor['b'] = correct;
        } else if (quizdata[1][i.toString()]['c'] ==
            quizdata[2][i.toString()]) {
          buttonColor['c'] = correct;
        } else if (quizdata[1][i.toString()]['d'] ==
            quizdata[2][i.toString()]) {
          buttonColor['d'] = correct;
        }
      });
    }
    setState(() {
      buttonColor[option] = displayColor;
      canceltimer = true;
      // Future.delayed(Duration(milliseconds: 1300), () => nextQuestion());
    });
  }

  Widget optionButton(String option) {
    var _onPressed;
    if (_enabled) {
      _onPressed = () {
        checkAnswer(option);
        _enabled = false;
        if (!_enabled) {
          _nextButtonEnabled = true;
        }
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
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'San Francisco',
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
        color: buttonColor[option],
        splashColor: Colors.grey[300],
        highlightColor: Color.fromRGBO(124, 134, 145, 1),
        minWidth: 170.0,
        height: 45.0,
      ),
    );
  }

  // Диалоговое окно после завершения теста
  void _showDialog() {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Завершение', style: TextStyle(color: Colors.white)),
            backgroundColor: Color.fromRGBO(127, 156, 163, 1),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text(
                      'Поздравляем! Количество правильных ответов: ' +
                          correctAnswers.toString(),
                      style: TextStyle(color: Colors.white))
                ],
              ),
            ),
            actions: <Widget>[
              FlatButton(
                  child: Text('ОК', style: TextStyle(color: textColor)),
                  onPressed: () {
                    Navigator.of(context).popUntil((route) => route.isFirst);
                  })
            ],
          );
        });
  }

  Widget nextButton() {
    if (_nextButtonEnabled) {
      return MaterialButton(
        onPressed: () => nextQuestion(),
        child: Text('Следующий',
            style: TextStyle(color: textColor, fontSize: 16.0)),
        hoverColor: appBarColor,
      );
    } else {
      return SizedBox();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor,
        appBar:
            AppBar(backgroundColor: appBarColor, title: Text('Тестирование')),
        body: SingleChildScrollView(
            child: Container(
                child: Column(
          children: <Widget>[
            SizedBox(height: 10.0),
            Container(
              padding: EdgeInsets.only(left: 10.0),
              alignment: Alignment.topLeft,
              child: Text(
                  'Вопрос № ' +
                      questionNum.toString() +
                      "\\" +
                      quizdata[0].length.toString(),
                  style: TextStyle(
                    color: textColor,
                    fontFamily: 'San Francisco',
                  )),
            ),
            Container(
              padding: EdgeInsets.only(left: 10.0),
              alignment: Alignment.topLeft,
              child: Text(
                  'Количество правильных ответов: ' + correctAnswers.toString(),
                  style:
                      TextStyle(fontFamily: 'San Francisco', color: textColor)),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 30.0),
              padding: EdgeInsets.all(10.0),
              alignment: Alignment.bottomCenter,
              child: Text(
                quizdata[0][i.toString()],
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16.5,
                    fontFamily: 'San Francisco',
                    color: textColor),
              ),
            ),
            Container(
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
            SizedBox(height: 30.0),
            nextButton()
            // Expanded(
            //   flex: 1,
            //   child: Container(
            //     child: Text(
            //       showtimer,
            //       style: TextStyle(
            //         color: timerColor,
            //         fontFamily: 'Blogger',
            //         fontSize: 20.0,
            //       ),
            //     ),
            //   ),
          ],
        ))));
  }
}
