import 'package:flutter/material.dart';
import 'package:historybook/style.dart';

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
                child: MaterialButton(
                    child: Text('СТАРТ', style: TextStyle(color: textColor)),
                    color: appBarColor,
                    onPressed: () =>
                        Navigator.of(context).pushNamed("/Quiz")))));
  }
}
