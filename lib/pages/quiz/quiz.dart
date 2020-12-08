import 'dart:convert';
import 'dart:math';
import 'package:flutter/gestures.dart';
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
                  SizedBox(height: 20.0),
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
  List multipleOptions =
      []; // Список для вопросов с несколькими варинтами ответов

  Color displayColor = appBarColor; // Какой цвет отображать на кнопке
  Color correct = Colors.green[300]; // Цвет для правильного ответа
  Color wrong = Colors.red[400]; // Цвет для неправлиьного
  Color selected = questionContainerColor;

  int correctAnswers = 0; // Кол-во правильных ответов
  int i = 1; // Итератор для вопросов
  int questionNum = 1; // Номер вопроса для отображения

  bool _enabled = true; // Активна ли кнопка
  bool _nextButtonEnabled = false; // Активна ли кнопка "Следующий"

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
    super.initState();

    randomArray();
    randomButton();
    i = urnList[0]; // Что б первый вопрос тоже был

    checkIfHasMultipleAnswers();
  }

  @override
  void setState(fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  void randomArray() {
    // ignore: sdk_version_set_literal
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
    // ignore: sdk_version_set_literal
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
    _nextButtonEnabled = false; // Отключаем кнопку "следующий"
    setState(() {
      if (questionNum < widget.quizdata[0].length) {
        i = urnList[questionNum];
        questionNum++;
        checkIfHasMultipleAnswers();
        multipleOptions = [];
      } else {
        _showDialog();
      }

      displayColor = appBarColor;

      // Сбрасываем цвета
      buttonColor["a"] = displayColor;
      buttonColor["b"] = displayColor;
      buttonColor["c"] = displayColor;
      buttonColor["d"] = displayColor;

      _enabled = true; // Активируем кнопки
    });
  }

  bool checkIfHasMultipleAnswers() {
    // Если существует несколько вариантов ответа
    if (widget.quizdata[2][i.toString()] is List) {
      print('Has multiple answers');
      return true;
    } else {
      return false;
    }
  }

  void checkAnswer(String option) {
    // Если существует несколько вариантов ответа
    if (checkIfHasMultipleAnswers()) {
      // Добавляем ответ в список, удаляем если уже существует
      multipleOptions.contains(widget.quizdata[1][i.toString()][option])
          ? multipleOptions.remove(widget.quizdata[1][i.toString()][option])
          : multipleOptions.add(widget.quizdata[1][i.toString()][option]);

      setState(() {
        buttonColor[option] == displayColor
            ? buttonColor[option] = selected
            : buttonColor[option] = displayColor;
      });

      print(multipleOptions);
    } else {
      if (widget.quizdata[2][i.toString()] ==
          widget.quizdata[1][i.toString()][option]) {
        displayColor =
            correct; // Выводим цвет зеленый - если правильно, красный - если неправильно
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
      });
    }
  }

  void checkMultipleAnswers() {
    print('checking multiple answers');
  }

  Widget optionButton(String option) {
    var _onPressed;

    if (_enabled) {
      _onPressed = () {
        checkAnswer(option);
        checkIfHasMultipleAnswers() ? _enabled = true : _enabled = false;
        if (!_enabled) {
          _nextButtonEnabled = true;
        }
      };
    }

    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 7.0,
        horizontal: 25.0,
      ),
      child: MaterialButton(
        onPressed: _onPressed,
        height: 85.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
        ),
        child: Text(
          widget.quizdata[1][i.toString()][option],
          textAlign: TextAlign.center,
          style: TextStyle(
            color: textColorLight,
            fontFamily: 'San Francisco',
            fontWeight: FontWeight.bold,
            fontSize: 14.0,
          ),
        ),
        disabledColor: buttonColor[option],
        color: buttonColor[option],
        splashColor: Colors.grey[300],
        highlightColor: Color.fromRGBO(124, 134, 145, 1),
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
            title: Text('Завершение', style: TextStyle(color: textColorLight)),
            backgroundColor: appBarColor,
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text(
                      'Поздравляем! Количество правильных ответов: ' +
                          correctAnswers.toString(),
                      style: TextStyle(color: textColorLight))
                ],
              ),
            ),
            actions: <Widget>[
              FlatButton(
                  child: Text('ОК', style: TextStyle(color: textColorLight)),
                  onPressed: () {
                    Navigator.of(context).popUntil((route) => route.isFirst);
                  })
            ],
          );
        });
  }

  Widget nextButton() {
    if (_nextButtonEnabled) {
      return Container(
          height: 60.0,
          width: 180.0,
          padding: const EdgeInsets.symmetric(),
          child: FlatButton(
            color: questionContainerColor,
            hoverColor: displayColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0)),
            onPressed: () => nextQuestion(),
            child: Text('Дальше', style: TextStyle(color: questionTextColor)),
          ));
    } else {
      return SizedBox();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Тестирование')),
        body: Container(
            child: Column(
          children: <Widget>[
            SizedBox(height: 10.0),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
              child: Stack(
                children: [
                  // Question container
                  Container(
                    padding: EdgeInsets.all(25.0),
                    decoration: BoxDecoration(
                        color: questionContainerColor,
                        borderRadius: BorderRadius.circular(12.0)),
                    constraints: BoxConstraints(
                      minHeight: 140.0,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      widget.quizdata[0][i.toString()],
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: questionTextColor,
                        fontSize: 14.5,
                        fontFamily: 'San Francisco',
                      ),
                    ),
                  ),
                  // Question number container
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10.0),
                      width: 75.0,
                      height: 40.0,
                      transform: Matrix4.translationValues(0, -20.0, 0),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black54.withOpacity(0.1),
                                offset: Offset(0, 1.5),
                                blurRadius: 1.5)
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0)),
                      child: Text(
                        questionNum.toString() +
                            "/" +
                            widget.quizdata[0].length.toString(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: appBarColor, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: ListView(
              children: [
                optionButton(optionBtn[urnButtonList[0]]),
                optionButton(optionBtn[urnButtonList[1]]),
                optionButton(optionBtn[urnButtonList[2]]),
                optionButton(optionBtn[urnButtonList[3]]),
              ],
            )),
            nextButton(),
            SizedBox(
              height: 60.0,
            )
          ],
        )));
  }
}
