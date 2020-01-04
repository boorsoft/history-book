import 'package:flutter/material.dart';
import '../../models/paragraph1-model.dart';
import '../../style.dart';

class Paragraph2 extends StatelessWidget {
  final Paragraph _paragraph = new Paragraph();
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('§2.Эпос "Манас" - неиссякаемый источник истории Кыргызстана'),
        ),
        body: 
        SingleChildScrollView(
          child:
        Container(
          padding: EdgeInsets.all(10.0),
          child:
          Column(
            children: [
              Text('lol'),
            ],
          ),
        ),
        ),
    );
  }
}