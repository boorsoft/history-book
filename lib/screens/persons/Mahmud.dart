import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:historybook/config/style.dart';
import '../../widgets/person-header.dart';

class Mahmud extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Scrollbar(
            child: SingleChildScrollView(
      child: Column(children: <Widget>[
        PersonHeader("assets/images/persons/Mahmud.jpg", "Махмуд Кашгари"),
        Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Html(
                data: """
<center><b>Махмуд Кашгари</b></center>
<p>
Махмуд ибн Хусейн ибн Мухам-мад (Махмуд ал-Кашгари) родился в городе Барсхан на южном берегу озера Иссык-Куль. Он принадлежал к правящей династии Караханидов. Широкую известность ему принес его труд «Диван лугат ат-тюрк» («Сло­варь тюркских наречий»), состав­ленный в Багдаде в 1072-1074 гг. Те немногие и скупые сведения, кото­рые имеются об ученом в настоящее время, содержатся только в самом «Диван лугат ат-тюрк».
Махмуд Кашгари много путеше­ствовал, изучая диалекты тюркско­го языка. Махмуд одинаково хоро­шо знал народные традиции тю­рок, Коран и этикет Караханид-ского двора. Свое сочинение он посвятил правителям Арабского Халифата, в военно-политической системе которого выходцы из тюркских племен занимали в то время ключевые позиции. «Диван лугат ат-тюрк», кроме богатого лексического материала, содер­жит много ценных сведений по этнографии, социальной органи­зации, этнополитической структу­ре тюркских племен Центральной Азии. «Хотя я происхожу из тю­рок, - писал автор, - которые го­ворят на самом чистом языке... я за пядью пядь исходил все эли, селе­ния, степи тюрок. Я полностью за­печатлел... речь тюрок (караханид-ских), туркмен, огузов, чигилей, ягма, кыргызов...»
</p>
<p>
К своему сочинению Махмуд Кашгари приложил оригинальную, круглую карту мира. Она отличает­ся редкими деталями и необычным расположением географических объектов. Вместо общепринятого «центра мира» того времши - Мек­ки Махмуд поместил в центр карты Иссык-Куль с родным городом Бар­схан. На карте не указано место расселения кыргызов, однако в тек­сте сочинения говорится о том, что их страна находится на крайнем северо-востоке, на территории, за­селенной тюркоязычными племе­нами, то есть примерно севернее р. Иртыш.
</p>
<p>
В настоящее время актуально ут­верждение Махмуда о близости на­речий и традиций кыргызов, кипча­ков и карлуков. Его труд о Средней Азии - единственный из дошедших до нас - написан на основе непо­средственного знакомства автора со страной. Поэтому сочинение Махмуда Кашгари специалисты на­зывают подлинной энциклопедией народной жизни тюрок раннего средневековья.
</p>
            """,
                defaultTextStyle: paragraphTextStyle,
                useRichText: true,
              ),
              Image.asset("assets/images/persons/WorldMap.jpg"),
              Text(
                "Карта мира Махмуда Кашгари",
                style: paragraphTextStyle,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 12.0,
              ),
            ],
          ),
        ),
      ]),
    )));
  }
}
