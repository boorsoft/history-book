import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:historybook/style.dart';
import 'person-header.dart';

class AtakeBaatyr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Scrollbar(
            child: SingleChildScrollView(
                child: Column(children: <Widget>[
      PersonHeader('assets/images/persons/AtakeBaatyr.jpg', "Атаке Баатыр"),
      Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Html(
              data: """
<center><b>Атаке Баатыр</b></center>
<p><b>Атаке Баатыр</b> - Жил между XVIII - XIX вв. Это была знаковая личность, ставшая незаурядным образцом в деле служения своему народу.
</p>
<p>
Атаке баатыр стоял во главе освобождения кыргызских земель от жунгаро-калмыцкого нашествия, чтобы достичь скорейшего возвращения народа на исконно кыргызскую землю Ала-Тоо. Продолжая традиции предков, он объединял кыргызские племена, обучал молодых военному делу, тем самым лично показывая пример ратной службы перед Родиной.
</p>
<p>
Проявляя прозорливость по укреплению дружеских отношений с Российским государством, он в 1785 году отправил своих послов в эту страну. Это был первый шаг в сторону будущего развития и процветания кыргызского государства. Дипломатический жест Атаке баатыра был высоко оценен Екатериной-II и она одарила его памятным именным знаком. Редкое сочетание трезвого ума предводителя и бесстрашие баатыра было полностью отдано борьбе за свободу и независимость кыргызского народа. Нынешнее поколение не должно забывать заслуги Атаке баатыра. Это народный герой, вся жизнь которого является примером для всех поколений.
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
