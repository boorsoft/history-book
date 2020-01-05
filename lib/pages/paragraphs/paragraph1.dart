import 'package:flutter/material.dart';
import 'package:historybook/data/moor_database.dart';
import 'package:provider/provider.dart';
import '../../style.dart';

class Paragraph1 extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    final database = Provider.of<AppDatabase>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(database.getAllParagraphs().toString()),
        ),
    );
  }
}