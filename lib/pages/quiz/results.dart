import 'package:flutter/material.dart';
import 'quiz.dart';

class Results extends StatefulWidget {

  @override 
  _ResultsState createState() => _ResultsState();
}

class _ResultsState extends State<Results> {

  Quiz quiz = new Quiz();

  @override 
  void initState() {
    super.initState();
  }

  @override 
  Widget build(BuildContext context) {
    Quiz quiz = new Quiz();
    return Scaffold(
      appBar: AppBar(
        title: Text("Результаты"),
        ),
      body: Container(
        child: Column(
          children: <Widget>[
            Center(
              child: Container(
                child: Text('Вы ответили верно на ' + (quiz.getCorrectAnswers().toString()) + ' вопросов!')
            ),
            ),
          ],
        ),
      ),
    );
  }
}