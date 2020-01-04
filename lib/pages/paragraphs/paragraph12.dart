import 'package:flutter/material.dart';
import '../../models/paragraph1-model.dart';
import '../../style.dart';

class Paragraph12 extends StatelessWidget {
  final Paragraph _paragraph = new Paragraph();
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('§12.Социально-экономическое строительство в период становления советской социалистической системы (1917-1940 гг.)'),
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