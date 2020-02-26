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
        extendBodyBehindAppBar: true,
        backgroundColor: bgColor,
        appBar: AppBar(
          title: Text('Тестирование'),
          backgroundColor: appBarColor,
        ),
        body: Container(
            child: ListView(
          children: <Widget>[
            QuizButton("Тест №1", "assets/json/exam.json"),
            QuizButton("Тест №2", "assets/json/exam2.json"),
            QuizButton("Тест №3", "assets/json/exam3.json"),
            QuizButton("Тест №4", "assets/json/exam4.json"),
            QuizButton("Тест №5", "assets/json/exam5.json"),
            QuizButton("Тест №6", "assets/json/exam6.json"),
            QuizButton("Тест №7", "assets/json/exam7.json"),
            QuizButton("Тест №8", "assets/json/exam8.json"),
            QuizButton("Тест №9", "assets/json/exam9.json"),
            QuizButton("Тест №10", "assets/json/exam10.json"),
            QuizButton("Тест №11", "assets/json/exam11.json"),
          ],
        )));
  }
}
