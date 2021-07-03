import 'package:flutter/material.dart';
import 'package:theme_provider/theme_provider.dart';
import 'package:historybook/screens/persons/Barsbek.dart';
import 'package:historybook/screens/persons/Ishak.dart';
import 'package:historybook/screens/persons/Sagynbai.dart';
import 'package:historybook/screens/persons/Torokul.dart';
import 'package:historybook/config/style.dart';
import 'screens/persons/DjusupBalasagyn.dart';
import 'screens/persons/Mahmud.dart';
import 'screens/home/home.dart';
import 'screens/paragraphs/paragraphs.dart';
import 'screens/about.dart';
import 'screens/persons/persons.dart';
import 'screens/quiz/quiz.dart';
import 'screens/quiz/quiz-starter.dart';
import 'screens/paragraphs/paragraph1.dart';
import 'screens/paragraphs/paragraph2.dart';
import 'screens/paragraphs/paragraph3.dart';
import 'screens/paragraphs/paragraph4.dart';
import 'screens/paragraphs/paragraph5.dart';
import 'screens/paragraphs/paragraph6.dart';
import 'screens/paragraphs/paragraph7.dart';
import 'screens/paragraphs/paragraph8.dart';
import 'screens/paragraphs/paragraph9.dart';
import 'screens/paragraphs/paragraph10.dart';
import 'screens/paragraphs/paragraph11.dart';
import 'screens/paragraphs/paragraph12.dart';
import 'screens/paragraphs/paragraph13.dart';
import 'screens/paragraphs/paragraph14.dart';
import 'screens/paragraphs/paragraph15.dart';
import 'screens/paragraphs/paragraph16.dart';
import 'screens/persons/Barsbek.dart';
import 'screens/persons/TagaiBii.dart';
import 'screens/persons/AtakeBaatyr.dart';
import 'screens/persons/OrmonHan.dart';
import 'screens/persons/BorombaiBii.dart';
import 'screens/persons/BaitykBaatyr.dart';
import 'screens/persons/Shabdan.dart';
import 'screens/persons/Alymbek.dart';
import 'screens/persons/Kurmandjan.dart';
import 'screens/persons/Chokon.dart';
import 'screens/persons/Sagynbai.dart';
import 'screens/persons/Karalaev.dart';
import 'screens/persons/Ishak.dart';
import 'screens/persons/Kasym.dart';
import 'screens/persons/Torokul.dart';
import 'screens/persons/Isa.dart';
import 'screens/persons/Alykul.dart';
import 'screens/persons/Chika.dart';
import 'screens/persons/kir2.dart';
import 'screens/persons/Tomiris.dart';
import 'screens/persons/Gerodot.dart';
import 'screens/persons/Darii1.dart';

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
          scaffoldBackgroundColor: bgColorDefault,
          fontFamily: 'San Francisco',
          buttonColor: buttonsColorDefault,
          textTheme: Theme.of(context).textTheme.apply(
              bodyColor: textColorDefault, displayColor: textColorDefault)),
      options: ThemeOption(
          bgColorOption: bgColorDefault,
          textColorOption: textColorDefault,
          appBarColorOption: bgColorDefault,
          shadowColorOption: shadowColorDefault,
          buttonsColorOption: buttonsColorDefault),
    );
  }

  AppTheme darkTheme() {
    return AppTheme(
      id: "dark_theme",
      description: "Dark theme",
      data: ThemeData(
          brightness: Brightness.dark,
          primaryColor: appBarColorDark,
          scaffoldBackgroundColor: bgColorDark,
          buttonColor: buttonsColorDark,
          textTheme: Theme.of(context)
              .textTheme
              .apply(bodyColor: textColorLight, displayColor: textColorLight)),
      options: ThemeOption(
          bgColorOption: bgColorDark,
          textColorOption: textColorLight,
          appBarColorOption: appBarColorDark,
          shadowColorOption: shadowColorDark,
          buttonsColorOption: buttonsColorDark),
    );
  }

  Map<String, WidgetBuilder> routes() {
    return <String, WidgetBuilder>{
      "/Home": (BuildContext context) => ThemeConsumer(child: Home()),
      "/Paragraphs": (BuildContext context) =>
          ThemeConsumer(child: Paragraphs()),
      "/Quiz": (BuildContext context) => ThemeConsumer(child: GetJson()),
      "/About": (BuildContext context) => ThemeConsumer(child: About()),
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
      "/Persons/Barsbek": (BuildContext context) =>
          ThemeConsumer(child: Barsbek()),
      "/Persons/DjusupBalasagyn": (BuildContext context) =>
          ThemeConsumer(child: Djusup()),
      "/Persons/Mahmud": (BuildContext context) =>
          ThemeConsumer(child: Mahmud()),
      "/Persons/TagaiBii": (BuildContext context) =>
          ThemeConsumer(child: TagaiBii()),
      "/Persons/AtakeBaatyr": (BuildContext context) =>
          ThemeConsumer(child: AtakeBaatyr()),
      "/Persons/OrmonHan": (BuildContext context) =>
          ThemeConsumer(child: OrmonHan()),
      "/Persons/BorombaiBii": (BuildContext context) =>
          ThemeConsumer(child: BorombaiBii()),
      "/Persons/BaitykBaatyr": (BuildContext context) =>
          ThemeConsumer(child: BaitykBaatyr()),
      "/Persons/Shabdan": (BuildContext context) =>
          ThemeConsumer(child: Shabdan()),
      "/Persons/Alymbek": (BuildContext context) =>
          ThemeConsumer(child: Alymbek()),
      "/Persons/Kurmanjan": (BuildContext context) =>
          ThemeConsumer(child: Kurmanjan()),
      "/Persons/Chokon": (BuildContext context) =>
          ThemeConsumer(child: Chokon()),
      "/Persons/Sagynbai": (BuildContext context) =>
          ThemeConsumer(child: Sagynbai()),
      "/Persons/Karalaev": (BuildContext context) =>
          ThemeConsumer(child: Karalaev()),
      "/Persons/Kasym": (BuildContext context) => ThemeConsumer(child: Kasym()),
      "/Persons/Torokul": (BuildContext context) =>
          ThemeConsumer(child: Torokul()),
      "/Persons/Ishak": (BuildContext context) => ThemeConsumer(child: Ishak()),
      "/Persons/Isa": (BuildContext context) => ThemeConsumer(child: Isa()),
      "/Persons/Alykul": (BuildContext context) =>
          ThemeConsumer(child: Alykul()),
      "/Persons/Chika": (BuildContext context) => ThemeConsumer(child: Chika()),
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
