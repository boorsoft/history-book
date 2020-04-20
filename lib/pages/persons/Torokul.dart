import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:historybook/style.dart';
import 'person-header.dart';

class Torokul extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor,
        body: Scrollbar(
            child: SingleChildScrollView(
                child: Column(children: <Widget>[
          PersonHeader("assets/images/persons/Torokul.jpg", "Торекул Айтматов"),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                Html(
                  data: """
<center><b>Торекул Айтматов</b></center>
<p>
Киргизский партийный и государственный деятель, 2-й секретарь ЦК Коммунистической партии Киргизии, народный комиссар торговли Киргизской АССР.
</p>
<p>
В 1930-е годы жил и работал в Оше, руководил Араван-Буринским районом.15 сентября 1937 года Бюро ЦК КПК постановило «просить ЦК ВКП(б) откомандировать с учёбы в Институте красной профессуры националиста Айтматова в распоряжение ЦК КПК для разрешения вопроса о его партийности». Арестован в Москве, этапирован в Бишкек, в 1938 расстрелян. Дети Торекула Айтматова — писатель Чингиз Айтматов, учёный в области горного дела Ильгиз Айтматов, физик, проректор педагогического института и деятель киргизского женского движения Роза Айтматова.Чингиз Айтматов долго искал могилу отца и смог найти лишь в 90-х годах. А после завещал похоронить себя рядом с отцом.
</p>
              """,
                  defaultTextStyle: paragraphTextStyle,
                  useRichText: true,
                ),
              ],
            ),
          ),
        ]))));
  }
}
