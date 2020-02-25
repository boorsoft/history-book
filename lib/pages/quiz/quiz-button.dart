import 'package:flutter/material.dart';
import 'package:historybook/style.dart';
import 'package:historybook/pages/quiz/quiz.dart';

class QuizButton extends StatelessWidget {
  final String quizButtonText;
  final String jsonFile;

  QuizButton(this.quizButtonText, this.jsonFile);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
            onTap: () => {
                  Navigator.of(context).pushNamed("/Quiz"),
                  QuizState.getJson = jsonFile
                },
            child: Container(
                margin: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
                decoration: BoxDecoration(color: appBarColor, boxShadow: [
                  BoxShadow(
                      color: shadowColor, blurRadius: 6.0, offset: Offset(2, 4))
                ]),
                child: Container(
                  height: 100.0,
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                      child: Text(quizButtonText,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold))),
                )))
      ],
    );
  }
}
