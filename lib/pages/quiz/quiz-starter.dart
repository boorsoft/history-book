import 'package:flutter/material.dart';
import 'package:historybook/style.dart';
import 'package:historybook/pages/quiz/quiz-button.dart';

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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            QuizButton("Тест №1", "assets/json/exam.json"),
            QuizButton("Тест №2", "assets/json/exam2.json"),
            QuizButton("Тест №3", "assets/json/exam3.json"),
            QuizButton("Тест №4", "assets/json/exam4.json"),
            QuizButton("Тест №5", "assets/json/exam5.json")
          ],
        ));
  }
}
