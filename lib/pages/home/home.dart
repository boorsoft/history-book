import 'package:flutter/material.dart';
import 'image-button.dart';
import 'package:open_iconic_flutter/open_iconic_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:historybook/style.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: appBarColor,
          actions: <Widget>[
            IconButton(
              icon: Icon(
                OpenIconicIcons.moon,
                color: Colors.white,
              ),
              onPressed: () {
                setState(() {
                  switchTheme();
                });
              },
            )
          ],
          title: Text('История Кыргызстана',
              style: TextStyle(fontWeight: FontWeight.bold))),
      backgroundColor: bgColor,
      body: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 5.0),
          ImageButton(
              "assets/images/home-pic1.jpg", "ПАРАГРАФЫ", "/Paragraphs"),
          ImageButton("assets/images/home-pic2.jpg", "ИСТОРИЧЕСКИЕ ЛИЧНОСТИ",
              "/Persons"),
          ImageButton("assets/images/home-pic4.jpg", "ТЕСТИРОВАНИЕ", "/Quiz"),
          ImageButton("assets/images/home-pic3.jpg", "О ПРИЛОЖЕНИИ", "/About"),
          SizedBox(height: 5.0),
        ],
      )),
    );
  }
}
