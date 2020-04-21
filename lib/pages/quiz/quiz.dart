import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:historybook/style.dart';

class GetJson extends StatelessWidget {
  List quizdata;
  static String getJson;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: DefaultAssetBundle.of(context).loadString(getJson),
        builder: (context, snapshot) {
          quizdata = json.decode(snapshot.data.toString());
          if (snapshot.hasData) {
            return Quiz(
              quizdata: quizdata,
            );
          } else {
            return Scaffold(
                backgroundColor: bgColor,
                body: Center(
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
                    ])));
          }
        });
  }
}

class Quiz extends StatefulWidget {
  final List quizdata;

  Quiz({this.quizdata});

  @override
  QuizState createState() => QuizState();
}

class QuizState extends State<Quiz> {
  List urnList = []; // Список уникальных рандомных чисел
  List urnButtonList =
      []; // Список уникальных рандомных чисел для вариантов ответа

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

  Map<int, String> optionBtn = {1: "a", 2: "b", 3: "c", 4: "d"};

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
    randomArray();
    randomButton();
    i = urnList[0];
    super.initState();
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

  void randomArray() {
    var riSet = <int>{}; // Сэт рандомных чисел
    var random = new Random();

    for (int i = 0; i <= widget.quizdata[0].length; i++) {
      var randomNum = random.nextInt(widget.quizdata[0].length) + 1;
      riSet.add(randomNum);
      if (riSet.length < widget.quizdata[0].length) {
        i = 0;
      }
    }
    urnList = riSet.toList();
    print(urnList);
  }

  void randomButton() {
    var rnSet = <int>{}; // Сэт рандомных чисел
    var random = new Random();

    for (int i = 1; i <= 4; i++) {
      var randomNum = random.nextInt(4) + 1;
      rnSet.add(randomNum);
      if (rnSet.length < 4) {
        i = 1;
      }
    }
    urnButtonList = rnSet.toList();
    print(urnButtonList);
  }

  void nextQuestion() {
    canceltimer = false;
    startTime = 30;
    _nextButtonEnabled = false; // Отключаем кнопку "следующий"
    setState(() {
      if (questionNum < widget.quizdata[0].length) {
        i = urnList[questionNum];
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
    if (widget.quizdata[2][i.toString()] ==
        widget.quizdata[1][i.toString()][option]) {
      displayColor =
          correct; // Выводим цвет синий - если правильно, красный - если неправильно
      correctAnswers += 1; // Увеличиваем кол-во правильных ответов
    } else {
      displayColor = wrong;
      setState(() {
        // Показываем правильный ответ, если ответили неправильно
        if (widget.quizdata[1][i.toString()]['a'] ==
            widget.quizdata[2][i.toString()]) {
          buttonColor['a'] = correct;
        } else if (widget.quizdata[1][i.toString()]['b'] ==
            widget.quizdata[2][i.toString()]) {
          buttonColor['b'] = correct;
        } else if (widget.quizdata[1][i.toString()]['c'] ==
            widget.quizdata[2][i.toString()]) {
          buttonColor['c'] = correct;
        } else if (widget.quizdata[1][i.toString()]['d'] ==
            widget.quizdata[2][i.toString()]) {
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
          widget.quizdata[1][i.toString()][option],
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
        body: Container(
            child: ListView(
          children: <Widget>[
            SizedBox(height: 10.0),
            Container(
              padding: EdgeInsets.only(left: 10.0),
              alignment: Alignment.topLeft,
              child: Text(
                  'Вопрос № ' +
                      questionNum.toString() +
                      "\\" +
                      widget.quizdata[0].length.toString(),
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
              constraints: BoxConstraints(
                minHeight: 130.0,
              ),
              alignment: Alignment.center,
              child: Text(
                widget.quizdata[0][i.toString()],
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
                  optionButton(optionBtn[urnButtonList[0]]),
                  optionButton(optionBtn[urnButtonList[1]]),
                  optionButton(optionBtn[urnButtonList[2]]),
                  optionButton(optionBtn[urnButtonList[3]])
                ],
              ),
            ),
            SizedBox(height: 20.0),
            nextButton(),

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
        )));
  }
}
