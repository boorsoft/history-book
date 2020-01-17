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

Widget OptionButton() {
  return Padding(
    padding: EdgeInsets.symmetric(
      vertical: 15.0,
      horizontal: 20.0,
    ),
    child: MaterialButton(
      onPressed: () {},
      child: Text(
        "Вариант 1",
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'Blogger',
          fontSize: 16.0,
        ),
      ),
      color: Colors.green,
      splashColor: Colors.lightGreen,
      highlightColor: Colors.green[700],
      minWidth: 150.0, 
      height: 38.0,
    ),
  );
}

class _QuizState extends State<Quiz> {  
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Тестирование')),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.all(14.5),
                alignment: Alignment.bottomCenter,
                child: Text(
                  'Здесь будет вопрос',
                  style: TextStyle(
                    fontSize: 16.5,
                    fontFamily: 'Helvetica'
                  ),
                  ),
              ),
            ),
            Expanded(
              flex: 7,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    OptionButton(),
                    OptionButton(),
                    OptionButton(),
                    OptionButton(),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: Text(
                  "30", 
                  style: TextStyle(
                    color: Colors.green,
                    fontFamily: 'Blogger',
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
        ],
        )
      ),
    );
  }
}