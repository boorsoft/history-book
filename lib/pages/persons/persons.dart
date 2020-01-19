import 'package:flutter/material.dart';
import 'package:historybook/pages/persons/persons-button.dart';
import 'persons-button.dart';


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
            PersonsButton("assets/images/persons/TagaiBii.jpg", "Муххамед Кыргыз (Тагай Бий)", "/Persons/TagaiBii"),
            PersonsButton("assets/images/persons/AtakeBaatyr.jpg", "Атаке Баатыр", "/Persons/AtakeBaatyr"),
            PersonsButton("assets/images/persons/OrmonHan.jpg", "Ормон Хан", "/Persons/OrmonHan"),
            PersonsButton("assets/images/persons/BorombaiBii.jpg", "Боромбай Бий", "/Persons/BorombaiBii"),
            PersonsButton("assets/images/persons/BaitykBaatyr.jpg", "Байтик Баатыр", "/Persons/BaitykBaatyr"),
            PersonsButton("assets/images/persons/Shabdan.jpg", "Шабдан Баатыр", "/Persons/Shabdan"),
            PersonsButton("assets/images/persons/Alymbek.jpg", "Алымьек Датка", "/Persons/Alymbek"),
            
          ],
        ),
      ),
    );
  }
}