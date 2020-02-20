import 'package:flutter/material.dart';
import 'package:historybook/pages/persons/persons-button.dart';
import 'persons-button.dart';
import 'package:historybook/style.dart';

class Persons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text('Исторические личности'),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Wrap(
            spacing: 7.0,
            children: <Widget>[
              PersonsButton("assets/images/paragraphs/Barsbek.jpg",
                  "Ыначу Алп Бильге (Барсбек)", "/Persons/Barsbek"),
              PersonsButton("assets/images/persons/Djusup.jpg",
                  "Жусуп Баласагын", "/Persons/DjusupBalasagyn"),
              PersonsButton("assets/images/persons/Mahmud.jpg",
                  "Махмуд Кашгари", "/Persons/Mahmud"),
              PersonsButton("assets/images/persons/TagaiBii.jpg",
                  "Муххамед Кыргыз (Тагай Бий)", "/Persons/TagaiBii"),
              PersonsButton("assets/images/persons/AtakeBaatyr.jpg",
                  "Атаке Баатыр", "/Persons/AtakeBaatyr"),
              PersonsButton("assets/images/persons/OrmonHan.jpg", "Ормон Хан",
                  "/Persons/OrmonHan"),
              PersonsButton("assets/images/persons/BorombaiBii.jpg",
                  "Боромбай Бий", "/Persons/BorombaiBii"),
              PersonsButton("assets/images/persons/BaitykBaatyr.jpg",
                  "Байтик Баатыр", "/Persons/BaitykBaatyr"),
              PersonsButton("assets/images/persons/Shabdan.jpg",
                  "Шабдан Баатыр", "/Persons/Shabdan"),
              PersonsButton("assets/images/persons/Alymbek.jpg",
                  "Алымбек Датка", "/Persons/Alymbek"),
              PersonsButton("assets/images/persons/Kurmandjan.jpg",
                  "Курманжан Датка", "/Persons/Kurmanjan"),
              PersonsButton("assets/images/persons/Chokon.jpg",
                  "Чокан Чингисович Валиханов", "/Persons/Chokon"),
              PersonsButton("assets/images/persons/Sagynbai.jpg",
                  "Сагымбай Орозбак уулу", "/Persons/Sagynbai"),
              PersonsButton("assets/images/persons/Karalaev.jpg",
                  "Саякбай Каралаев", "/Persons/Karalaev"),
              PersonsButton("assets/images/persons/Kasym.jpg",
                  "Касым Тыныстанов", "/Persons/Kasym"),
              PersonsButton("assets/images/persons/Torokul.jpg",
                  "Торекул Айтматов", "/Persons/Torokul"),
              PersonsButton("assets/images/persons/Ishak.jpg",
                  "Раззаков Исхак Раззакович", "/Persons/Ishak"),
              PersonsButton("assets/images/persons/Isa.jpg", "Иса Ахунбаев",
                  "/Persons/Isa"),
              PersonsButton("assets/images/persons/Alykul.jpg",
                  "Алыкул Осмонов", "/Persons/Alykul"),
              PersonsButton("assets/images/persons/Chika.jpg",
                  "Чингиз Айтматов", "/Persons/Chika"),
            ],
          ),
        ),
      ),
    );
  }
}
