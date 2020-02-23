import 'package:flutter/material.dart';
import 'package:historybook/style.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:html/dom.dart' as dom;
import 'package:historybook/pages/home/home.dart';

class Paragraph1 extends StatefulWidget {
  @override
  _Paragraph1State createState() => _Paragraph1State();
}

class _Paragraph1State extends State<Paragraph1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          backgroundColor: appBarColor,
          title: Text("§1.История как наука"),
        ),
        body: Scrollbar(
          child: SingleChildScrollView(
              padding: EdgeInsets.all(6.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Center(
                      child: Text(
                    '§1.История как наука',
                    style: paragraphBoldTextStyle,
                  )),
                  SizedBox(
                    height: 12.0,
                  ),
                  Html(
                    data: """
<b>История</b> - одна из древнейших и увлекательнейших областей человеческого  знания, духовной культуры. В рейтинговой таблице ЮНЕСКО  история занимает четвёртое место среди современных наук.
«История» – древнегреческое слово. В переводе оно означает «исследование», «повествование» и «рассказ о прошедших событиях».
«Отцом истории» считается Геродот,  живший в Древней Греции в V в. до н. э.""",
                    defaultTextStyle: paragraphTextStyle,
                    useRichText: true,
                  ),
                  Image.asset("assets/images/paragraphs/Gerodot.jpg"),
                  Html(
                    data:
                        """Геродот, древнегреческий историк, отец исторической науки.
<b>Геродот Галикарнасский</b> (484 – 425 до н. э.) – древнегреческий историк, автор первого полномасштабного исторического трактата – «Истории», – описывающего греко-персидские войны и обычаи многих современных его автору народов. Труды Геродота имели огромное значение для античной культуры. Цицерон назвал его “отцом истории”. Его «История» – чрезвычайно важный источник сведений о Великой Скифии, включавший в себя информацию о жизни наших далёких предков.

Уже  в  глубокой  древности  сформировались  два  противоположных  направления в понимании вопросов исторического развития – идеалистическое и материалистическое.

Основные направления в понимании вопросов  исторического развития:

• <b>Идеалистическое</b>
Идеалистическое понимание истории  абсолютизировало  роль  сознания  в  жизни  общества  и  превращало  его  в  конечную  и  определяющую силу исторического процесса. Все происходящие в  экономике и других материальных  сферах  жизнедеятельности  общества изменения для него выступали  вторичными,  определяемыми  сознанием.  Таким  образом,  идеалисты  утверждали,  что  основу  общественного  развития  определяет  уровень  духовно-нравственного сознания человека. Историю  творит человек, но его разум – от  Бога.  Такое  миропонимание  долгое время господствовало в исторической науке.
• <b>Материалистическое</b>
В  основе  противоположной  идеализму  диалектико-материалистической  концепции  понимания  истории  лежит  положение о зависимости сознания от бытия. Общественное  бытие,  условия  жизнедеятельности  людей  –  это  и  есть  та  объективная  общественная  реальность,  своего  рода  социальная  материя,  которая  отражается  в  общественном сознании, определяет его и обуславливает, в конечном  счете,  его  развитие,  его «взлеты» и «падения».

Со времени возникновения эти два направления ведут острую борьбу,  пытаясь доказать обоснованность, правильность и логичность своих  положений. Противостояние между ними обуславливало развитие науки об обществе. Вплоть до середины XIX века господствовала теория  идеалистического понимания истории. И сегодня в определенных научных кругах Запада она продолжает занимать ведущее место.
<center><b>Предмет истории</b></center>
Предмет  истории  определяется  неоднозначно.  Любое  определение  предмета истории субъективно, связано с идеологией государства и мировоззрением историка. Историки,  стоящие  на  материалистических  позициях,  считают,  что  история  как  наука  изучает  закономерности  развития  общества,  которые,  в конечном счёте, зависят от способа производства материальных благ. На основе материалистического подхода в учебниках и учебных пособиях даются следующие определения предмета истории:
""",
                    defaultTextStyle: paragraphTextStyle,
                    useRichText: true,
                    renderNewlines: true,
                  ),
                  FrameStyle(Text(
                      "История – совокупность знаний и представлений о прошлом человечества.",
                      style: paragraphTextStyle)),
                  SizedBox(height: 12.0),
                  FrameStyle(Text(
                      "История – комплекс общественных наук, изучающих прошлое человечества во всей его конкретности и многообразии.",
                      style: paragraphTextStyle)),
                  SizedBox(height: 12.0),
                  FrameStyle(Text(
                      "История – наука, изучающая прошлое и настоящее человеческого общества в хронологической последовательности и взаимосвязи.",
                      style: paragraphTextStyle)),
                  SizedBox(height: 12.0),
                  FrameStyle(Text(
                      "История – наука, изучающая объективные законы исторического развития человеческого общества.",
                      style: paragraphTextStyle)),
                  SizedBox(height: 12.0),
                  FrameStyle(Text(
                      "История – наука, изучающая общественные явления в их возникновении и развитии в связи с конкретными историческими условиями.",
                      style: paragraphTextStyle)),
                  SizedBox(height: 12.0),
                  FrameStyle(Text(
                      "История – наука, изучающая прошлое человеческого  общества в неразрывной  связи  с  современной  жизнью  народов,  устанавливающая  законы развития общества на различных этапах его существования.",
                      style: paragraphTextStyle)),
                  SizedBox(height: 12.0),
                  FrameStyle(Text(
                      "История – наука, исследующая процесс развития человеческого общества в прошлом, а также его современное состояние, при котором раскрывается логика, закономерность его развития.",
                      style: paragraphTextStyle)),
                  SizedBox(height: 12.0),
                  Text(
                      """В  зависимости  от  того,  что  является  предметом  изучения  истории,  выделяются Мировая (всемирная или всеобщая) история, история континентов  (например, Азии или Африки), отдельных стран (например, Кыргызстана). Мировая история – наука, о развитии человеческого общества с древнейших времён до наших дней на территории всего земного шара. Отечественная история – наука, о развитии человеческого общества  с древнейщих времён до настоящего времени, на территории какой-либо  страны. Таким образом, история Кыргызстана – наука, изучающая процессы  развития нашего Отечества; историю этносов, проживающих на территории  Кыргызстана, в первую очередь кыргызов; становление и формирование  государственных и общественных институтов; деятельность исторических  личностей.""",
                      style: paragraphTextStyle),
                  Text("""Составные части исторической науки:
Археология – наука, исследующая историю  общества по сохранившимся  материальным остаткам жизнедеятельности  человека  –  вещественным  памятникам:  орудиям  труда,  предметам  быта,  украшениям,  устройству жилища, захоронениям,  кладам и т. д.
Этнография – изучает  особенности  материальной  и  духовной  культуры  народов,  их  культурно-исторические взаимоотношения
              """, style: paragraphTextStyle),
                  SizedBox(height: 12.0),
                  Text(
                      """В исторических исследованиях значительна роль вспомогательных наук,  которые, изучая конкретные области жизни, практики и культуры общества,  способствуют более глубокому осмыслению исторического процесса.
""",
                      style: paragraphTextStyle),
                  Text("Вспомогательные исторические дисциплины.",
                      style: paragraphBoldTextStyle),
                  SizedBox(height: 12.0),
                  Text("""
Хронология – изучает систему летоисчисления; Палеография – письменные памятники и историю письма; Нумизматика – историю монетной чеканки и денежного обращения  (по монетам, денежным знакам и т. д.), медальерного  искусства; Эпиграфика – древние письмена на камнях, металлических, деревянных, костянных изделиях; Генеалогия – происхождение народов, родов и фамилий; Геральдика – гербы государств, городов и исторических личностей;
Сфрагистика – печати; Топонимика – географические названия.
""", style: paragraphTextStyle),
                  Text("""
Особое место среди вспомогательных дисциплин занимает источниковедение  (классификация  исторических  источников)  и  историография  (изучает историю самой исторической науки).""",
                      style: paragraphTextStyle),
                  SizedBox(height: 12.0),
                  Text("Специально-исторические методы познания: ",
                      style: paragraphBoldTextStyle),
                  Text("""

• хронологический – изложение исторического материала в хронологической последовательности; 
• синхронный – одновременное изучение событий, происходящих в обществе; 
• дихронный – метод периодизации; 
• историческое моделирование – исследование исторических процессов  путём изучения их моделей (аналогов); 
• статистический – метод изучения  количественных исследований.

Принципы исторического познания: 
• Историзм – рассмотрение фактов, событий в соответствии с конкретной  исторической обстановкой, во взаимосвязи, взаимообусловленности и в  развитии. 
• Объективность – каждое явление рассматривается в его  многогранности  и  противоречивости  (совокупности положительных и отрицательных  сторон). 
• Социальный подход – тенденциозность (партийный или классовый подход): рассмотрение исторических процессов с учётом социальных интересов различных слоёв населения; соотношение классовых и групповых  интересов с общечеловеческими; учёт субъективного момента в практической деятельности правительств, партий, отдельных личностей. • Альтернативность – на основе объективных возможностей определяется  степень вероятности событий (процессов).
Функции исторического познания: 
• познавательная, человек постигает истину, добавляет новые знания в  свой интеллектуальный багаж. 
• политико-практическая – позволяет определять главные политические  ориентиры и приоритеты развития государства, предупреждает принятие  субъективных решений. 
• мировоззренческая – формирует в человеке объективное мировоззрение  и понимание закономерности общественного развития. 
• воспитательная – способствует становлению активного гражданского самосознания – формированию в  человеке таких личностных качеств, как  патриотизм, интернационализм, ответственность.
""", style: paragraphTextStyle),
                  Text("""
Подходы к изучению истории
• Религиозный 
• Формационный 
• Цивилизационный

""", style: paragraphTextStyle),
                  Text("Периодизация истории", style: paragraphBoldTextStyle),
                  SizedBox(
                    height: 12.0,
                  ),
                  Text("""
• Религиозная (христианская) модель:
  От сотворения мира и человека, до изгнания Адама и  Евы из Рая.
  От изгнания Адама и Евы  до Великого потопа и спасения Ноя.
  От Ноя до рождения Иисуса Христа.
  От рождения Иисуса Христа до Страшного суда.

Марксистская концепция исторического развития:
1. Первобытнообщинная формация
2. Рабовладельческая формация
3. Феодализм
4. Капитализм
5. Коммунизм (социализм)
""", style: paragraphTextStyle),
                  Text("""
Цивилизационный подход к изучению истории Термин «цивилизация» (от лат. civilis – гражданский, государственный,  политический, достойный гражданина) был введён в научный оборот французкими просветителями для обозначения общества, в котором царствуют  свобода, справедливость и правовой строй. Цивилизации – крупные целостные социо-культурные системы со своими закономерностями, которые включают в себя различные элементы (религию, экономическую, политическую, социальную организацию, систему  образования и  воспитания и т. д.). Каждый элемент этой системы несёт в  себе печать, своеобразие той или иной цивилизации. Сторонники цивилизационного подхода рассматривали историю как  последовательную смену культурно-исторических типов, или цивилизаций. Учёные выделяют более десяти типов цивилизаций. Цивилизацию можно определить как – способ жизнедеятельности человека в специфических условиях (климатических, географических, геополитических, историко-культурных и т. д.)
""", style: paragraphTextStyle),
                  Text("Типология цивилизаций", style: paragraphBoldTextStyle),
                  SizedBox(height: 12.0),
                  Text("""
Цивилизации подразделяются на четыре основных типа:
1. Природные сообщества
2. Восточный тип цивилизации
3. Западный тип цивилизации
4. Современный тип цивилизации  или глобальная цивилизация

""", style: paragraphTextStyle),
                  FrameStyle(Text("Природные сообщества",
                      style: paragraphBoldTextStyle)),
                  Text("""
Характерные черты. 
• живут в рамках природного годового цикла, в гармонии с природой; 
• адаптирование к окружающей среде которая необходима для поддержания  и воспроизводства жизни; 
• борьба за сохранение равновесия между человеком и природой; 
• сохранение сложившихся обычаев, традиций, методов труда; 
• в социальной организации господствует коллективизм: община, род, клан,  племя; 
• природное сообщество в основном ведет кочевой или полукочевой образ  жизни; 
• духовная культура, верования связаны с обожествлением сил природы. 
• средством интеллектуального и эммоционального освоения мира выступает мифология; 
• для этих сообществ характерен крайний традиционализм.

• Восточный тип (Восточная цивилизация):
Исторически  первый  тип  цивилизации,  сформировавшийся  к  III  тысячалетию до н. э. в Древнем Востоке:  в Древней Индии, Китае, Месопотамии, Древнем Египте.
Характерные черты: • традиционализм  –  ориентация  на  воспроизводство сложившихся форм  и образа жизни; • медленное развитие всех форм человеческой жизнедеятельности; • в  мировоззренческом  плане  представление о полной несвободе человека, предопределение всех его действий и поступков независящими от  него силами природы, социума, богов и т. д.
• нравственно-волевая  установка  не  на  познание и преобразование мира, а на  созерцательность, безмятежность, мистическое единение с природой; • общественная  жизнь  построенная  на  принципах коллективизма; • политическая организация происходит  в форме деспотии, в которой осуществляется абсолютное преобладание государства над обществом; • экономическая основа – корпоративная  и государственная формы собственности, а основным методом управления  выступает принуждение.

• Западный тип (Западная цивилизация):
Сформировался в Европе и  Северной Америке.
Характерные черты: • динамизм,  ориентация  на  новизну; • индивидуализм,  установка  на автономию личности; • уважение  к  частной  собственности; • рационализм; • идеалы  свободы,  равенства, терпимости;
• предпочтение  демократии  всем  другим  формам  государственного  управления.  Начиная  с  XVI – XVII вв.  в  развитии  западной  цивилизации  выделяется  особый  этап –  техногенная цивилизация, т. е. происходит научно-техническая революция и  распространяется  по  всему  земному шару.
""", style: paragraphTextStyle),
                  FrameStyle(Text(
                      "Глобальная цивилизация (по-франц. «global» – «всеобщий», по-лат. «globus» – «земной шар»)",
                      style: paragraphTextStyle,
                      textAlign: TextAlign.center)),
                  Text("""
Это современный этап цивилизационного развития, характеризующийся возрастающей целостностью мирового сообщества, становлением единой  общепланетарной цивилизации. Это связано: 
• с интернационализацией общественной деятельности на земле; 
• с вхождением человечества в единую систему социально-экономических,  политических, культурных и иных связей и отношений; 
• распространение по всей планете всех форм социальной, экономической и  культурной жизни, знаний и ценностей; 
• унификация социокультурной жизни различных стран и регионов земного  шара; 
• создание общепланетарной системы общественного разделения труда, политических институтов, информации, связи, транспорта и т. д.; 
• усвоение  прогрессивного  опыта  при  сохранении  особенности  каждого  общества, культуры и менталитета народа; 
• усиление однородности социальных, экономических и политических форм  и сочетание их с культурным многообразием.
""", style: paragraphTextStyle),
                ],
              )),
        ));
  }
}
