import 'package:flutter/material.dart';
import '../../style.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Paragraph1 extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('§1.История как наука'),
        ),
        body: 
        SingleChildScrollView(
          child:
        Container(
          padding: EdgeInsets.all(10.0),
          child:
          Column(
            children: [
              
        ],
          ),
        ),
        ),
    );
  }
}