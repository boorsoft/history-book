import 'package:flutter/material.dart';
import 'package:theme_provider/theme_provider.dart';
import 'package:historybook/pages/persons/Barsbek.dart';
import 'package:historybook/pages/persons/Ishak.dart';
import 'package:historybook/pages/persons/Sagynbai.dart';
import 'package:historybook/pages/persons/Torokul.dart';
import 'package:historybook/style.dart';
import 'pages/persons/DjusupBalasagyn.dart';
import 'pages/persons/Mahmud.dart';
import 'pages/home/home.dart';
import 'pages/paragraphs/paragraphs.dart';
import 'pages/about.dart';
import 'pages/persons/persons.dart';
import 'pages/quiz/quiz.dart';
import 'pages/quiz/quiz-starter.dart';
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
import 'pages/persons/Barsbek.dart';
import 'pages/persons/TagaiBii.dart';
import 'pages/persons/AtakeBaatyr.dart';
import 'pages/persons/OrmonHan.dart';
import 'pages/persons/BorombaiBii.dart';
import 'pages/persons/BaitykBaatyr.dart';
import 'pages/persons/Shabdan.dart';
import 'pages/persons/Alymbek.dart';
import 'pages/persons/Kurmandjan.dart';
import 'pages/persons/Chokon.dart';
import 'pages/persons/Sagynbai.dart';
import 'pages/persons/Karalaev.dart';
import 'pages/persons/Ishak.dart';
import 'pages/persons/Kasym.dart';
import 'pages/persons/Torokul.dart';
import 'pages/persons/Isa.dart';
import 'pages/persons/Alykul.dart';
import 'pages/persons/Chika.dart';
import 'pages/persons/kir2.dart';
import 'pages/persons/Tomiris.dart';
import 'pages/persons/Gerodot.dart';
import 'pages/persons/Darii1.dart';

class App extends StatefulWidget {
  @override
  AppState createState() => AppState();
}

class AppState extends State<App> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
        saveThemesOnChange: true,
        loadThemeOnInit: true,
        themes: [defaultTheme(), darkTheme()],
        defaultThemeId: 'default_theme',
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            home: ThemeConsumer(child: Home()),
            routes: routes()));
  }

  AppTheme defaultTheme() {
    return AppTheme(
      id: "default_theme",
      description: "Default theme",
      data: ThemeData(
          brightness: Brightness.light,
          primaryColor: appBarColorDefault,
          scaffoldBackgroundColor: bgColorDefault),
      options: ThemeOption(
          textColorOption: textColorDefault,
          appBarColorOption: appBarColorDefault,
          shadowColorOption: shadowColorDefault),
    );
  }

  AppTheme darkTheme() {
    return AppTheme(
      id: "dark_theme",
      description: "Dark theme",
      data: ThemeData(
          brightness: Brightness.dark,
          primaryColor: appBarColorDark,
          scaffoldBackgroundColor: bgColorDark),
      options: ThemeOption(
          textColorOption: textColorWhite,
          appBarColorOption: appBarColorDark,
          shadowColorOption: shadowColorDark),
    );
  }

  Map<String, WidgetBuilder> routes() {
    return <String, WidgetBuilder>{
      "/Home": (BuildContext context) => ThemeConsumer(child: Home()),
      "/Paragraphs": (BuildContext context) =>
          ThemeConsumer(child: Paragraphs()),
      "/About": (BuildContext context) => ThemeConsumer(child: About()),
      "/Quiz": (BuildContext context) => ThemeConsumer(child: GetJson()),
      "/QuizStarter": (BuildContext context) =>
          ThemeConsumer(child: QuizStarter()),
      "/Persons": (BuildContext context) => ThemeConsumer(child: Persons()),
      "/Paragraphs/Paragraph1": (BuildContext context) =>
          ThemeConsumer(child: Paragraph1()),
      "/Paragraphs/Paragraph2": (BuildContext context) =>
          ThemeConsumer(child: Paragraph2()),
      "/Paragraphs/Paragraph3": (BuildContext context) =>
          ThemeConsumer(child: Paragraph3()),
      "/Paragraphs/Paragraph4": (BuildContext context) =>
          ThemeConsumer(child: Paragraph4()),
      "/Paragraphs/Paragraph5": (BuildContext context) =>
          ThemeConsumer(child: Paragraph5()),
      "/Paragraphs/Paragraph6": (BuildContext context) =>
          ThemeConsumer(child: Paragraph6()),
      "/Paragraphs/Paragraph7": (BuildContext context) =>
          ThemeConsumer(child: Paragraph7()),
      "/Paragraphs/Paragraph8": (BuildContext context) =>
          ThemeConsumer(child: Paragraph8()),
      "/Paragraphs/Paragraph9": (BuildContext context) =>
          ThemeConsumer(child: Paragraph9()),
      "/Paragraphs/Paragraph10": (BuildContext context) =>
          ThemeConsumer(child: Paragraph10()),
      "/Paragraphs/Paragraph11": (BuildContext context) =>
          ThemeConsumer(child: Paragraph11()),
      "/Paragraphs/Paragraph12": (BuildContext context) =>
          ThemeConsumer(child: Paragraph12()),
      "/Paragraphs/Paragraph13": (BuildContext context) =>
          ThemeConsumer(child: Paragraph13()),
      "/Paragraphs/Paragraph14": (BuildContext context) =>
          ThemeConsumer(child: Paragraph14()),
      "/Paragraphs/Paragraph15": (BuildContext context) =>
          ThemeConsumer(child: Paragraph15()),
      "/Paragraphs/Paragraph16": (BuildContext context) =>
          ThemeConsumer(child: Paragraph16()),
      "/Persons/Chika": (BuildContext contex) => ThemeConsumer(child: Kir2()),
      "/Persons/Chika": (BuildContext contex) =>
          ThemeConsumer(child: Tomiris()),
      "/Persons/Chika": (BuildContext contex) =>
          ThemeConsumer(child: Gerodot()),
      "/Persons/Chika": (BuildContext contex) => ThemeConsumer(child: Darii1()),
      "/Persons/Barsbek": (BuildContext contex) =>
          ThemeConsumer(child: Barsbek()),
      "/Persons/DjusupBalasagyn": (BuildContext contex) =>
          ThemeConsumer(child: Djusup()),
      "/Persons/Mahmud": (BuildContext contex) =>
          ThemeConsumer(child: Mahmud()),
      "/Persons/TagaiBii": (BuildContext contex) =>
          ThemeConsumer(child: TagaiBii()),
      "/Persons/AtakeBaatyr": (BuildContext contex) =>
          ThemeConsumer(child: AtakeBaatyr()),
      "/Persons/OrmonHan": (BuildContext contex) =>
          ThemeConsumer(child: OrmonHan()),
      "/Persons/BorombaiBii": (BuildContext contex) =>
          ThemeConsumer(child: BorombaiBii()),
      "/Persons/BaitykBaatyr": (BuildContext contex) =>
          ThemeConsumer(child: BaitykBaatyr()),
      "/Persons/Shabdan": (BuildContext contex) =>
          ThemeConsumer(child: Shabdan()),
      "/Persons/Alymbek": (BuildContext contex) =>
          ThemeConsumer(child: Alymbek()),
      "/Persons/Kurmanjan": (BuildContext contex) =>
          ThemeConsumer(child: Kurmanjan()),
      "/Persons/Chokon": (BuildContext contex) =>
          ThemeConsumer(child: Chokon()),
      "/Persons/Sagynbai": (BuildContext contex) =>
          ThemeConsumer(child: Sagynbai()),
      "/Persons/Karalaev": (BuildContext contex) =>
          ThemeConsumer(child: Karalaev()),
      "/Persons/Kasym": (BuildContext contex) => ThemeConsumer(child: Kasym()),
      "/Persons/Torokul": (BuildContext contex) =>
          ThemeConsumer(child: Torokul()),
      "/Persons/Ishak": (BuildContext contex) => ThemeConsumer(child: Ishak()),
      "/Persons/Isa": (BuildContext contex) => ThemeConsumer(child: Isa()),
      "/Persons/Alykul": (BuildContext contex) =>
          ThemeConsumer(child: Alykul()),
      "/Persons/Chika": (BuildContext contex) => ThemeConsumer(child: Chika()),
      "/Persons/Darii1": (BuildContext context) =>
          ThemeConsumer(child: Darii1()),
      "/Persons/Gerodot": (BuildContext context) =>
          ThemeConsumer(child: Gerodot()),
      "/Persons/kir2": (BuildContext context) => ThemeConsumer(child: Kir2()),
      "/Persons/Tomiris": (BuildContext context) =>
          ThemeConsumer(child: Tomiris())
    };
  }
}
