import 'package:flutter/material.dart';
import 'paragraph-button.dart';

class Paragraphs extends StatefulWidget {
  @override
  _ParagraphState createState() => _ParagraphState();
}

class _ParagraphState extends State<Paragraphs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Параграфы'), centerTitle: true),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 5.0),
          ParagraphButton("assets/images/article-pic1.jpg",
              "§1. История как наука", "/Paragraphs/Paragraph1"),
          ParagraphButton(
              "assets/images/article-pic2.jpg",
              "§2. Эпос \"Манас\" - неиссякаемый источник истории Кыргызстана",
              "/Paragraphs/Paragraph2"),
          ParagraphButton(
              "assets/images/article-pic3.jpg",
              "§3. Каменный и бронзовый века в Кыргызстане",
              "/Paragraphs/Paragraph3"),
          ParagraphButton(
              "assets/images/article-pic4.jpg",
              "§4. Племена саков и ранние государства",
              "/Paragraphs/Paragraph4"),
          ParagraphButton(
              "assets/images/article-pic5.jpg",
              "§5. Древние кыргызы. Тюрские каганаты",
              "/Paragraphs/Paragraph5"),
          ParagraphButton(
              "assets/images/article-pic6.jpg",
              "§6. Борьба кыргызов за господство в Центральной Азии. Кыргызское великодержавие",
              "/Paragraphs/Paragraph6"),
          ParagraphButton(
              "assets/images/article-pic7.jpg",
              "§7. Кыргызстан на пути к государственности",
              "/Paragraphs/Paragraph7"),
          ParagraphButton(
              "assets/images/article-pic8.jpg",
              "§8. Завершение процесса формирования кыргызской народности и его взаимоотношения с сопредельными народами",
              "/Paragraphs/Paragraph8"),
          ParagraphButton(
              "assets/images/article-pic9.jpg",
              "§9. Кыргызы в период господства кокандского ханства",
              "/Paragraphs/Paragraph9"),
          ParagraphButton(
              "assets/images/article-pic10.jpg",
              "§10. Присоединение Кыргызстана к России. Национально-освободительная борьба в Кыргызстане",
              "/Paragraphs/Paragraph10"),
          ParagraphButton(
              "assets/images/article-pic11.jpg",
              "§11. Падение царизма. Установление советской власти",
              "/Paragraphs/Paragraph11"),
          ParagraphButton(
              "assets/images/article-pic12.jpg",
              "§12. Социально-экономическое строительство в период становления советской социалистической системы (1917–1940 гг.)",
              "/Paragraphs/Paragraph12"),
          ParagraphButton(
              "assets/images/article-pic13.jpg",
              "§13. Становление кыргызской государственности. Усиление тоталитарного режима.",
              "/Paragraphs/Paragraph13"),
          ParagraphButton(
              "assets/images/article-pic14.jpg",
              "§14. Кыргызстан в годы Великой Отечественной Войны",
              "/Paragraphs/Paragraph14"),
          ParagraphButton(
              "assets/images/article-pic15.jpg",
              "§15. Кыргызстан в период «Развитого Социализма» И «Перестройки» (1964–1990 гг.) ",
              "/Paragraphs/Paragraph15"),
          ParagraphButton(
              "assets/images/article-pic16.jpg",
              "§16. Суверенная Кыргызская Республика",
              "/Paragraphs/Paragraph16"),
          SizedBox(height: 5.0),
        ],
      ),
    );
  }
}
