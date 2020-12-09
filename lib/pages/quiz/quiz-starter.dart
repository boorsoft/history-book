import 'package:flutter/material.dart';
import 'package:historybook/pages/quiz/quiz-button.dart';
import '../paragraphs/paragraph-header.dart';

class QuizStarter extends StatefulWidget {
  @override
  _QuizStarterState createState() => _QuizStarterState();
}

class _QuizStarterState extends State<QuizStarter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: <Widget>[
      ParagraphHeader("assets/images/home-pic4.jpg", "Тестирование",
          height: 180.0),
      Expanded(
          child: Container(
              child: ListView(
        children: <Widget>[
          QuizButton("Кыргызстан с древнейших времен", "assets/json/exam.json"),
          QuizButton(
              "Кыргызстан в первой половине XX века", "assets/json/exam2.json"),
          QuizButton("Первые племенные объединения", "assets/json/exam3.json"),
          QuizButton(
              "Кыргызское великодержавие, караханиды и монгольская эпоха",
              "assets/json/exam4.json"),
          QuizButton(
              "Кокандское ханство и Кыргызстан во второй половине XIX в.",
              "assets/json/exam5.json"),
          QuizButton("Кыргызстан XX век", "assets/json/exam6.json"),
          QuizButton("Кыргызстан в годы Великой Отечественной Войны",
              "assets/json/exam7.json"),
          QuizButton("Кыргызстан во второй половине XX века",
              "assets/json/exam8.json"),
          QuizButton(
              "Источники по истории Кыргызстана и Кыргызстан в средневековье",
              "assets/json/exam9.json"),
          QuizButton("Кыргызстан под властью Кокандского ханства",
              "assets/json/exam10.json"),
          QuizButton(
              "Установление советской власти и развитие национальной государственности",
              "assets/json/exam11.json"),
          QuizButton("Эпоха тюрков, Монгольские государства",
              "assets/json/test1.json"),
          QuizButton("Тюргеши и Карлуки, Дококандский период",
              "assets/json/test2.json")
        ],
      )))
    ]));
  }
}
