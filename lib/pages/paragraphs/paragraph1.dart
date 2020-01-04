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
          StreamBuilder(
            stream: Firestore.instance.collection('paragraphs').snapshots(),
            builder: (context, snapshot) {
            if(!snapshot.hasData) return Text('No data found, sorry...');
            return Column(
              children: <Widget>[
                Text(snapshot.data.documents[0][0]),
              ],
            );
            }
              ),

    );
  }
}