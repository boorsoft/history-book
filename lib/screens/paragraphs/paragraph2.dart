import 'package:flutter/material.dart';
import '../../config/style.dart';
import 'package:flutter_html/flutter_html.dart';
import '../../widgets/paragraph-header.dart';

class Paragraph2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Scrollbar(
            child: SingleChildScrollView(
      child: Column(children: <Widget>[
        ParagraphHeader("assets/images/article-pic2.jpg",
            "§2. Эпос \"Манас\" - неиссякаемый источник истории Кыргызстана"),
        Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(
                height: 12.0,
              ),
              Image.asset("assets/images/paragraphs/Manas.JPG"),
              Html(
                data: """            
<b>Эпос «Манас»</b> – это уникальная сокровищница древней истории кыргызского  народа. «Манас» является национальной  гордостью  кыргызов,  величайшим  наследием предков, которое переходит от   поколения  к  поколению.  Его  создание  стало  огромным  вкладом  кыргызского  народа  в  мировую  культуру  прошлого  тысячелетия.
Общий объем трех частей, записанных у манасчи Саякбая Карала уулу составляет 500 тысяч стихотворных строк<br>
• Это в 20 раз больше греческих  «Иллиады» и «Одиссея», вместе взятых. <br>
• В два с половиной раза – индийской «Махабхараты» <br>
• В пять раз больше персидского  «Шах-Наме» <br>
Еще в XIX в. такие всемирно известные ученые, как Ч. Валиханов,  В. Радлов, высказали мнение, что эпос является бесценным и уникальным источником для изучения и познания истории, философии, этнографии,  языка,  художественного  творчества,  психологии,  географии,  медицины, духовной культуры и разных сторон социальной жизни кыргызского народа – создателя этой драгоценной реликвии.
Манас Великодушный (Т. Герцен)
""",
                defaultTextStyle: paragraphTextStyle,
                useRichText: true,
                // renderNewlines: true,
              ),
              Html(
                data: """

По своему объему эпос «Манас»  превосходит все устно-поэтические  произведения мира.
<p>
Общий объем трех частей, записанных у манасчи <b>Саякбая Карала уулу</b> составляет 500 тысяч стихотворных строк:<br>
• Это в 20 раз больше греческих  «Иллиады» и «Одиссея», вместе взятых. <br>
• В два с половиной раза – индийской «Махабхараты»<br>
• В пять раз больше персидского  «Шах-Наме»<br>
<br>`
Еще в XIX в. такие всемирно известные ученые, как Ч. Валиханов,  В. Радлов, высказали мнение, что эпос является бесценным и уникальным источником для изучения и познания истории, философии, этнографии,  языка,  художественного  творчества,  психологии,  географии,  медицины, духовной культуры и разных сторон социальной жизни кыргызского народа – создателя этой драгоценной реликвии.
<br>
<center>
<b>Об эпохе возникновения и развития эпоса «Манас».</b>
</center>
<br>
</p>

Эпос «Манас», ставший своего рода художественной энциклопедией  жизни  народа,  содержит  информацию  о  ярких  страницах  исторического  пути кыргызов.
По ней мы можем судить о некоторых характерных признаках и структуре древней общинно-родовой формации – военной демократии (равноправие членов дружин при дележе  военной добычи, выборность военачальников, ханов и т. п. )

<br><p>Большую ценность представляют топонимы – наименования  мест исторических событий, населенных пунктов, географических объектов, названия родоплеменных образований, содержащие архаическую окраску.</p>
<br><p>В связи с вышесказанными пояснениями, некоторые ученые  связывают зарождение эпоса с периодом, предшествующим  нашей эре, и высказывают мнение, что в эпосе отражены события трех тысячелетней давности.</p>
<br><p>А. Бернштам, М. Ауэзов считают эпохой появления и развития эпоса более ранний период, а начало основных его событий относят к началу VII века.</p>
<p>
Из источников мы знаем, что Китай в 748 г. захватил Чуйскую долину, разрушил здесь до основания г. Суяб и уничтожил его жителей. Возможно, строки эпоса освещают именно этот период борьбы с китайскими захватчиками. Можно  предположить, что после Великого похода Манаса китайцы  вторглись в Чуйскую долину. Вышесказанное подтверждает  гипотезу о том, что эпос был создан в VII – VIII вв.
</p>
<p>
По мнению таких исследователей, как С. Малов, В. Жирмунский, Б. Юнусалиев, К. Рахматулин и др., в эпосе «Манас»  отражены события, связанные с политическим усилением  енисейских кыргызов в IX–X вв. и последующими историческими событиями.
</p>
<p>
В настоящее время, в науке преобладает последняя точка зрения, связывающая возникновение эпоса «Манас» с Великим  Кыргызским каганатом образованным кыргызами на Енисее  в IX–X вв.
</p>
<p>
Однако, это не сводит на нет версию о более раннем возникновении эпоса, так как в VI – IX вв. кыргызы, населявшие  долину Среднего Енисея, беспрестанно вели борьбу за независимость с господствующими в Центральной Азии Тюркскими, Карлукскими, Уйгурским каганатами.
</p>
<p>Эпос «Манас» – ценнейший источник при изучении исследований эпохи господства Караханидов в Восточном ТяньШане и Семиречье.</p>
<p>Эпос содержит немало сведений о нашествии в начале XII в.  кара-китаев (киданей) и найманов на Среднюю Азию, включая и земли кыргызов.</p>
<p>После XIII века, в связи с нашествиями монголов, а с XIV в.  ойрат-калмаков, в эпосе «Манас» произошло перемещение  сюжетов эпохи енисейских кыргызов, Караханидов и каракитаев. В содержании на первый план вышла тема борьбы кыргызов против калмакских захватчиков. Длительная  (XIV–XVIII вв.) борьба кыргызов и соседних с ними народов  против калмаков, за свободу и независимость, стала историческим фоном для традиционных событий эпоса, подняло  его на качественно новый уровень и способствовало достижению им к середине XIX века наивысшего расцвета.
</p>
<p>
<center><b>Варианты эпоса «Манас»</b></center> 
В результате творчества народных сказителей – манасчи разных периодов, – усложнялись его сюжетные линии, композиция, появились новые персонажи. Так возникли разные варианты эпоса. Сегодня  известно  более  70  письменных  вариантов  эпоса  «Манас».  На сегодня варианты записанные от великих манасчи Сагымбая Орозбак  уулу(1867–1930) и Саякбая Карала уулу (1894–1971) считаются непревзойденными образцами художественного воплощения эпоса. 
<center><b>Варианты эпоса</b></center>
</p>
<p><b>1.</b> Сагымбай Орозбак уулу<br>
• Годы жизни:1867–1930<br>
• Объём тыс. стихотворных строк: 180,4
</p>
<p><b>2.</b> Саякбай Карала уулу<br> 
• Годы жизни: 1894–1971<br>
• Объём тыс. стихотворных строк: 500,6
</p>
<p>
<b>3.</b> Шапак Рысмендеев <br>
• Годы жизни: 1863–1956 <br>
• Объём тыс. стихотворных строк: 81,7 
</p>
<p>
<b>4.</b> Тоголок Молдо <br>
• Годы жизни: 1860–1942 <br>
• Объём тыс. стихотворных строк: 77,5 
</p>
<p>
<b>5.</b> Багыш Сазанов <br>
• Годы жизни: 1878–1958 <br?
• Объём тыс. стихотворных строк: 21,5 
</p>
<p>
<b>6.</b> Молдобасан  Мусулманкулов <br>
• Годы жизни: 1883–1961 <br> 
• Объём тыс. стихотворных строк: 103,6 
</p>
<p>
<b>7.</b> Ибраим Абдрахманов <br>
• Годы жизни: 1888–1967 <br> 
• Объём тыс. стихотворных строк: 35 
</p>
<p>
<b>8.</b> Мамбет Чокморов <br>
• 1896–1973 <br> 
• Объём тыс. стихотворных строк: 201,4 
</p>
<p>
<b>9.</b> Шаабай Азиз уулу <br>
• Годы жизни: 1927–2004 <br> 
• Объём тыс. стихотворных строк: 12,2
</p>
<p>
<b>10.</b> Жакшылык Сарыков <br> 
• Годы жизни: 1880–1934 <br> 
• Объём тыс. стихотворных строк: 198
</p>
<p>
<b>11.</b> М. Ашымбаев <br> 
• Годы жизни: 1897–1969 <br> 
• Объём тыс. стихотворных строк: 27
</p>
<p>
<b>12.</b> Ыса Жумабек уулу <br> 
• Годы жизни: 1900– ? <br> 
• Объём тыс. стихотворных строк: 15
</p>
<p>
<b>13.</b> Жаныбай Кожеков <br> 
• Годы жизни: 1869–1942 <br> 
• Объём тыс. стихотворных строк: 86
</p>
""",
                defaultTextStyle: paragraphTextStyle,
                useRichText: true,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset("assets/images/paragraphs/Sagymbay.JPG"),
                  Image.asset("assets/images/paragraphs/Sayakbay.JPG"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text('Сагымбай Орозбак уулу',
                      style: TextStyle(
                          fontFamily: 'Georgia',
                          fontSize: 14.5,
                          color: Colors.black87)),
                  Text('Саякбай Карала уулу',
                      style: TextStyle(
                          fontFamily: 'Georgia',
                          fontSize: 14.5,
                          color: Colors.black87)),
                ],
              ),
              Html(
                data: """
<center><b>
Все основные варианты первой части эпоса содержат следующие эпизоды:</b> </center>

 • разгром и покорение кыргызов чужеземными завоевателями; <br>
 • рождение богатыря, его детские годы и первые подвиги; <br>
 • освобождение Родины от захватчиков, возвращение кыр гызов из долин Алтая на земли Ала-Тоо; <br>
 • истории Шоорука, Алооке; <br>
 • женитьба Манаса на Каныкей; <br>
 • история Козкаманов; • история Алмамбета; <br> 
 • тризна (поминки) по Кокетею; • Великий поход; <br>
 • смерть Манаса и строительство его мавзолея.
<p>
 Каждый из названных эпизодов имеет свое постоянное место, соблюдается и определенная последовательность их изложения. Установленный  порядок обычно не нарушается. Лишь изредка встречается перемещение событий или эпизодов. Как отмечалось выше, кыргызский народ сохранил в своей памяти десятки вариантов эпоса, многие из них записаны с использованием арабского,  латин ского, современного русского алфавитов. Многие варианты хранятся в  рукопис ных фондах  Национальной академии наук Кыргызской Республики  и требуют научного исследования и анализа.
Сагымбай Орозбак уулу. Саякбай Карала уулу.</center></p>
<center><b>Отображение жизни кыргызского народа в эпосе «Манас»</b></center>
 <p>Несмотря на то, что «Манас» – это героический эпос, в нем значительное место отведено описанию мирной жизни народа. В эпосе красочно описываются традиции, обычаи, этические, религиозные и иные представления  народа. 
 <br>Так, раздел «Рождение Манаса и его детство» позволяет узнать, какие  обычаи и традиции сопровождали рождение ребенка, как проходил ритуал  именаречения, каковы были основные принципы воспитания детей и т. д.  Раздел «Избрание Манаса ханом» дает представление о принципах управления народом, организации общественного устройства, а также о некоторых  аспектах социальной жизни народа в прошлом. Богатые и красивые свадебные традиции кыргызов – ритуалы сватовства, бракосочетания, проведения  свадебного торжества воспроизводит раздел «Женитьба Манаса на Каныкей». Многие из них, надо отметить, сохранились до настоящего времени  и стали неотъемлемым компонентом нашей жизни. И, наконец, как логическое завершение круга человеческой жизни можно рассматривать наполненный чувством скорби и печали ритуал проводов умершего в последний путь  в разделе «Смерть Манаса» и церемонию поминальных торжеств в разделе  «Поминки по Кокетею».
</p>
                """,
                defaultTextStyle: paragraphTextStyle,
                useRichText: true,
              ),
              Image.asset("assets/images/paragraphs/Gercen.JPG"),
              Text("Иллюстрация к эпосу «Манас» Т. Герцен.",
                  style: paragraphTextStyle),
            ],
          ),
        ),
      ]),
    )));
  }
}