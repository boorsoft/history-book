import 'package:flutter/material.dart';
import 'dart:convert';

class GetJson extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: DefaultAssetBundle.of(context).loadString("assets/quiz.json"),
      builder: (context, snapshot) {
        var data = json.decode(snapshot.data.toString());
        if(data == null) {
          return Scaffold(
            body: Center(
              child:
              Text('Выполняется загрузка...', style: TextStyle(fontFamily: 'Blogger'))
            ),
          );
        } else {
          return Quiz();
        }
      }
    );
  }
}

class Quiz extends StatefulWidget {
  @override 
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {  
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Тестирование')),
      body: Container(
        child: Column(
          children: <Widget>[
                 
        ],
        )
      ),
    );
  }
}