import 'package:flutter/material.dart';
import 'image-button.dart';
import 'package:open_iconic_flutter/open_iconic_flutter.dart';
import 'package:theme_provider/theme_provider.dart';
import 'package:historybook/style.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  OpenIconicIcons.moon,
                  color: Colors.white,
                ),
                hoverColor: Colors.white70,
                onPressed: () {
                  ThemeProvider.controllerOf(context).nextTheme();
                })
          ],
          title: Text('История Кыргызстана',
              style: TextStyle(fontWeight: FontWeight.bold))),
      body: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 5.0),
          ImageButton(
              "assets/images/home-pic1.jpg", "Параграфы", "/Paragraphs"),
          ImageButton("assets/images/home-pic2.jpg", "Исторические Личности",
              "/Persons"),
          ImageButton(
              "assets/images/home-pic4.jpg", "Тестирование", "/QuizStarter"),
          ImageButton("assets/images/home-pic3.jpg", "О приложении", "/About"),
          SizedBox(height: 5.0),
        ],
      )),
    );
  }
}
