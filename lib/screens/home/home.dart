import 'package:flutter/material.dart';
import '../../widgets/image-button.dart';
import 'package:open_iconic_flutter/open_iconic_flutter.dart';
import 'package:theme_provider/theme_provider.dart';
import 'package:historybook/config/style.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    appBarColor = ThemeProvider.themeOf(context)
        .data
        .primaryColor; // Цвет AppBar в соответсвии с темой, используется для цвета кнопок
    textColor = ThemeProvider.optionsOf<ThemeOption>(context).textColorOption;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 20.0, 7.0),
              child: IconButton(
                  icon: Icon(
                    OpenIconicIcons.moon,
                    color: Colors.white,
                  ),
                  iconSize: 21.0,
                  hoverColor: Colors.white70,
                  onPressed: () {
                    ThemeProvider.controllerOf(context).nextTheme();
                  }),
            )
          ],
          centerTitle: true,
          title: Text('История Кыргызстана',
              style: TextStyle(fontWeight: FontWeight.normal))),
      body: Container(
        color: appBarColor,
        child: Container(
            decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0))),
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: 12.0),
                    ImageButton("assets/images/home-pic1.jpg", "Параграфы",
                        "/Paragraphs"),
                    ImageButton("assets/images/home-pic2.jpg",
                        "Исторические Личности", "/Persons"),
                    ImageButton("assets/images/home-pic4.jpg", "Тестирование",
                        "/QuizStarter"),
                    ImageButton("assets/images/home-pic3.jpg", "О приложении",
                        "/About"),
                    SizedBox(height: 5.0),
                  ]),
            )),
      ),
    );
  }
}
