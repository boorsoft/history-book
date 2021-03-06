import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:historybook/config/style.dart';
import '../../widgets/person-header.dart';

class Kir2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Scrollbar(
            child: SingleChildScrollView(
                child: Column(children: <Widget>[
      PersonHeader("assets/images/persons/kir2.jpg", "Кир II Великий"),
      Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Html(
              data: """
<center><b>Кир II Великий</b></center>
<p>
Кир II Великий (др.-перс. — Куруш) — персидский царь, правил в 559 — 530 годах до н. э., из династии Ахеменидов. СынКамбиса I и, возможно, царевны Манданы, дочери царя Мидии Иштувегу (Астиага). Основатель персидской державы Ахеменидов.
</p>
<p>
Отец Кира происходил из рода Ахеменидов. Труды Геродота гласят, что Кира изгнали в горы еще в детстве. Там его вскормила волчица, а пастух воспитал. Кто-то даже осмеливался утверждать, что имя Кир переводится с персидского как «молодой пес». Однако одни из самых надежных сведений о Кире пошли после 558 года до н.э., именно в этом году он получил власть над персидской областью Аншан. Вскоре Кир поднял восстание против мидийской династии, что правила в это время. Война длилась три года. Кир победил мидийцев, но оставил их в составе правящего класса, а также оставил некоторые их законы и административные установления.
</p>
<p>
В 546 году до н.д. лидийский царь Крез вторгся в Персию. Кир отстоял свои земли, а еще вторгся в Лидию. Он далее решающий бой на равнине Тимбра. Кир смог разгромить вражеское войско. Крез бежал в Сарды. Однако царь Персии преследовал его до полной своей победы. Он пощадил Креза. Позднее Персия и Лидия стали союзниками и положили конец вражде. В 539 году Кир пошел на восток. Он планировал захватить богатое Вавилонское царство. У вавилонян не было достойных полководцев. Они сдались без боя, памятуя о том, как милостиво обращался с побежденными Кир Великий. Персы также получили Сирию и Палестину. Кир всегда проявлял милосердие к покоренным державам. Он гуманно обращался с жителями и даже исправлял некоторые несправедливости, что царили до этого.
</p>
<p>
Персидская империя теперь была невероятных размеров. Власть Кира простиралась от Индии, вдоль морских побережий Черного моря и Арала, и до побережья Средиземного моря. В нее входили все цивилизованные и культурные центры тогдашнего культурного мира. Однако Кир решил не останавливаться. Он планировал завоевать массагетов. Кочевые племена, что находились около побережья Каспийского моря. Сначала персы побеждали, но через год после начала войны в бою был убит царь Кир. Ему было 39 лет. Персы не смогли выручить тело вождя у врагов. Поговаривают, что царица массагетов отрезала голову Киру Великому и кинула ее в мехи, наполненные кровью. Она сказала, что теперь он вдоволь напьется человеческой крови. Вождь персов создал свою мощную империю благодаря военной силе, умению находить союзников среди покоренных народов. Говорят, что Кир умел воодушевить армию. Вселить в них веру в победу, несмотря на то, что противник превосходит по силе и количеству. Кир умел управлять своими землями, а также и захваченными. Его политика умиротворяла побежденный народ. Благодаря Киру Великому империя персов процветала еще два века. Даже, несмотря на то, что их лучший вождь и полководец погиб. Неизвестно, смогла бы Персидская империя достигнуть таких размеров и мощи, если бы не Кир Великий.
</p>
              """,
              defaultTextStyle: paragraphTextStyle,
              useRichText: true,
            ),
          ],
        ),
      ),
    ]))));
  }
}
