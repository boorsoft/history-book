import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:historybook/style.dart';

class Gerodot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Геродот")
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Html(
              data: """
<center><b>Геродот</b></center>
<p><b>Геродот</b> - это такой-то чел вапввп</p>     
<p>Парыары еще что-то ыкырыварывпоф </p>         
              
              """,
              defaultTextStyle: paragraphTextStyle,
              useRichText: true,
            ),
          ],
        ),
      ),
    );
  }
}