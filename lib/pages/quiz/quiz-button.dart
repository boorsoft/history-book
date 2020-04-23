import 'package:flutter/material.dart';
import 'package:historybook/pages/quiz/quiz.dart';
import 'package:open_iconic_flutter/open_iconic_flutter.dart';
import 'package:historybook/style.dart';

class QuizButton extends StatelessWidget {
  final String quizButtonText;
  final String jsonFile;

  QuizButton(this.quizButtonText, this.jsonFile);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        ListTile(
          leading: Icon(OpenIconicIcons.book, color: textColor),
          title: Text(quizButtonText, style: paragraphBoldTextStyle),
          contentPadding: EdgeInsets.all(20.0),
          onTap: () => {
            Navigator.of(context).pushNamed("/Quiz"),
            GetJson.getJson = jsonFile
          },
        )
      ],
    );
  }
}
