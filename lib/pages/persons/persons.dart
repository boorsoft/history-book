import 'package:flutter/material.dart';
import 'package:historybook/pages/persons/persons-button.dart';

class Persons extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Исторические личности')),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            PersonsButton("assets/images/paragraphs/Gerodot.jpg", "Геродот", "/Persons/Gerodot"),
            PersonsButton("assets/images/paragraphs/Barsbek.jpg", "Ыначу Алп Бильге (Барсбек)", "/Persons/Barsbek"),
          ],
        ),
      ),
    );
  }
}