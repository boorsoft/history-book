import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:historybook/style.dart';

class Djusup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          backgroundColor: appBarColor,
          title: Text("Жусуп Баласагын"),
        ),
        body: Scrollbar(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Html(
                    data: """
<center><b>Жусуп Баласагын</b></center>
<p>
О Жусупе Баласагыне, авторе величайшего творения — поэмы «Благодатное знание», или «Наука об управлении государством», известно немного. Он родился примерно в 1010-1016 (1018) годах в столице средневекового Караханидского государства — городе Баласагын. Он был высокообразованным человеком своей эпохи — имел основательные познания по астрономии, математике, медицине, знал историю, философию, эстетику, этику, литературу, арабскую и ирано-таджикскую поэзию, фольклор тюрков и язык фарси. Ему были присущи широта и глубина мышления.
</p>
<p>
Ко времени окончания работы над поэмой автору было 54 года. Он начал писать ее в Баласагыне, а завершил в 1067- 1070 годах в Кашгаре, то есть работал над ней в течение 18 месяцев. Известно, что свое детище Жусуп Баласагын преподнес в дар Тавгач Буура Карахану Абу-Али-Хасану — правителю Кашгара. Будучи человеком просвещенным, тот по достоинству оценил глубокое содержание и яркую поэтическую форму произведения. Поэту было присвоено высокое звание Улуг Хасс-Хажиб (араб, хасс — уважаемый человек при дворе, главный советник кагана), которого удостаивались самые знаменитые, авторитетные и наиболее приближенные ко двору хана личности.
</p>
<p>
«Благодатное знание» Жусупа Баласагына — произведение, написанное в традиционном для восточной культуры этико-дидактическом стиле, имеет характерную назидательно-воспитательную направленность. Жанр зародился в древней литературе Египта, Индии, Ирана, затем хорошо «освоился» в восточной письменной и устной литературе. В Европе он сформировался как жанр «зерцала» намного позднее — в эпоху Ренессанса, спустя пять веков после появления сочинения Жусупа Баласагына.
</p>
            """,
                    defaultTextStyle: paragraphTextStyle,
                    useRichText: true,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
