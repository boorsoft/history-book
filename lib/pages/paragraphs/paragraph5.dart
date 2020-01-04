import 'package:flutter/material.dart';
import '../../models/paragraph1-model.dart';
import '../../style.dart';

class Paragraph5 extends StatelessWidget {
  final Paragraph _paragraph = new Paragraph();
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('§5.Древние кыргызы. Тюркские каганаты'),
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