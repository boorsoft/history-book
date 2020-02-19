import 'package:flutter/material.dart';
import 'package:historybook/style.dart';
import 'package:historybook/pages/quiz/quiz.dart';

class QuizStarter extends StatefulWidget {
  @override
  _QuizStarterState createState() => _QuizStarterState();
}

class _QuizStarterState extends State<QuizStarter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          title: Text('Тестирование'),
          backgroundColor: appBarColor,
        ),
        body: Container(
            child: Center(
                child: FlatButton(
                    child: Text('СТАРТ'),
                    onPressed: () =>
                        Navigator.of(context).pushNamed("/Quiz")))));
  }
}
