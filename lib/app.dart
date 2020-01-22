import 'package:flutter/material.dart';
import 'package:historybook/pages/persons/Barsbek.dart';
import 'pages/splash-screen.dart';
import 'pages/home/home.dart';
import 'pages/paragraphs/paragraphs.dart';
import 'pages/about.dart';
import 'pages/persons/persons.dart';
import 'pages/quiz/quiz.dart';
import 'pages/paragraphs/paragraph1.dart';
import 'pages/paragraphs/paragraph2.dart';
import 'pages/paragraphs/paragraph3.dart';
import 'pages/paragraphs/paragraph4.dart';
import 'pages/paragraphs/paragraph5.dart';
import 'pages/paragraphs/paragraph6.dart';
import 'pages/paragraphs/paragraph7.dart';
import 'pages/paragraphs/paragraph8.dart';
import 'pages/paragraphs/paragraph9.dart';
import 'pages/paragraphs/paragraph10.dart';
import 'pages/paragraphs/paragraph11.dart';
import 'pages/paragraphs/paragraph12.dart';
import 'pages/paragraphs/paragraph13.dart';
import 'pages/paragraphs/paragraph14.dart';
import 'pages/paragraphs/paragraph15.dart';
import 'pages/paragraphs/paragraph16.dart';
import 'pages/persons/Gerodot.dart';
import 'pages/persons/Barsbek.dart';
import 'pages/persons/TagaiBii.dart';
import 'pages/persons/AtakeBaatyr.dart';
import 'pages/persons/OrmonHan.dart';
import 'pages/persons/BorombaiBii.dart';
import 'pages/persons/BaitykBaatyr.dart';
import 'pages/persons/Shabdan.dart';
import 'pages/persons/Alymbek.dart';
import 'pages/persons/Kurmandjan.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
        theme: ThemeData(
          primaryColor: Color.fromRGBO(127, 156, 163, 1),
          // primaryTextTheme: TextTheme(
          //   title: TextStyle(
          //     color: Colors.grey,
          //   ),
          // ),
          fontFamily: 'San Francisco',
        ),
        routes: routes());
  }

  Map<String, WidgetBuilder> routes() {
    return <String, WidgetBuilder>{
      "/Home": (BuildContext context) => Home(),
      "/Paragraphs": (BuildContext context) => Paragraphs(),
      "/About": (BuildContext context) => About(),
      "/Quiz": (BuildContext context) => Quiz(),
      "/Persons": (BuildContext context) => Persons(),
      "/Paragraphs/Paragraph1": (BuildContext context) => Paragraph1(),
      "/Paragraphs/Paragraph2": (BuildContext context) => Paragraph2(),
      "/Paragraphs/Paragraph3": (BuildContext context) => Paragraph3(),
      "/Paragraphs/Paragraph4": (BuildContext context) => Paragraph4(),
      "/Paragraphs/Paragraph5": (BuildContext context) => Paragraph5(),
      "/Paragraphs/Paragraph6": (BuildContext context) => Paragraph6(),
      "/Paragraphs/Paragraph7": (BuildContext context) => Paragraph7(),
      "/Paragraphs/Paragraph8": (BuildContext context) => Paragraph8(),
      "/Paragraphs/Paragraph9": (BuildContext context) => Paragraph9(),
      "/Paragraphs/Paragraph10": (BuildContext context) => Paragraph10(),
      "/Paragraphs/Paragraph11": (BuildContext context) => Paragraph11(),
      "/Paragraphs/Paragraph12": (BuildContext context) => Paragraph12(),
      "/Paragraphs/Paragraph13": (BuildContext context) => Paragraph13(),
      "/Paragraphs/Paragraph14": (BuildContext context) => Paragraph14(),
      "/Paragraphs/Paragraph15": (BuildContext context) => Paragraph15(),
      "/Paragraphs/Paragraph16": (BuildContext context) => Paragraph16(),
      "/Persons/Gerodot": (BuildContext context) => Gerodot(),
      "/Persons/Barsbek": (BuildContext contex) => Barsbek(),
      "/Persons/TagaiBii": (BuildContext contex) => TagaiBii(),
      "/Persons/AtakeBaatyr": (BuildContext contex) => AtakeBaatyr(),
      "/Persons/OrmonHan": (BuildContext contex) => OrmonHan(),
      "/Persons/BorombaiBii": (BuildContext contex) => BorombaiBii(),
      "/Persons/BaitykBaatyr": (BuildContext contex) => BaitykBaatyr(),
      "/Persons/Shabdan": (BuildContext contex) => Shabdan(),
      "/Persons/Alymbek": (BuildContext contex) => Alymbek(),
      "/Persons/Kurmanjan": (BuildContext contex) => Kurmanjan(),
    };
  }
}
