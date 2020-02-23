import 'package:flutter/material.dart';
import '../../style.dart';
import 'package:flutter_html/flutter_html.dart';

class Paragraph4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          backgroundColor: appBarColor,
          title: Text('§4.Племена саков и ранние государства'),
        ),
        body: Scrollbar(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text(
                    '§4.Племена саков и ранние государства',
                    style: paragraphBoldTextStyle,
                    textAlign: TextAlign.center,
                  ),
                  Html(
                    data: """
<p>В VIII – III вв. до н. э. обширные территории, занимаемые современными государствами Средней Азии и Казахстаном, населяли многочисленные племена, которых в древнеперсидских клинописных текстах называли саками.</p>
<p>Античные  авторы  Древней  Греции  и  Рима называли саков  скифами, древнеиндийские источники  турами, китайские –  народ сэ.</p>
<p>Этноним сак – означал «Свободный  человек, доблестный муж, воин».</p>

<b>Первые упоминания о саках:</b> 
• Бехистунская надпись Дария I; <br>
• «История» Геродота; • «География» Страбона; <br>
• «История Персии»  Ктесия.
""",
                    defaultTextStyle: paragraphTextStyle,
                    useRichText: true,
                  ),
                  Image.asset("assets/images/paragraphs/tigrahauda-sacks.jpg"),
                  Text("Саки тиграхауда.",
                      style: paragraphTextStyle, textAlign: TextAlign.center),
                  Html(
                    data: """
<p>В VI–V вв. до н.э. саки Средней Азии были  объединены в два крупных союза:</p>
1. Саки  тиграхауда,  древнегреческие  саки – ортокарибанты, что в переводе означало «саки в остроконечных  шапках»<br>
<b>Владения:</b> от Каспийского моря и Узбоя до  Тенир-Тоо и поймы реки Или, север современного Кыргызстана<br> 
2. Саки хаомаварга, что означало «саки  почитающие  напиток хаома».<br>
<b>Владения:</b> От Северной Индии до Памиро-Алая и Ферганской долины
<p>Среди  археологических памятников сакских  племён  преобладают  <b>курганы-могильники</b>.  Курган-могильник – это своего рода  инженерное сооружение,  его  возводили  на  месте  упокоения  знатного  человека.    В  археологии  их  называют  «царскими  курганами». Исследование курганов  открыло новую  страницу истории  культуры  сакских  племен.  Многие  курганы когда-то подвергались разграблению,  однако  грабителям  порой не удавалось забрать все. Оставшиеся предметы дают достаточное  представление об обряде захоронения саков. Внешний и внутренний  вид курганов-могильников каждого  региона,  имеет  свои  особенности.  Если на Алтае и в Сибири срубленные  из  дерева  большие  «склепы»  сооружались    в  раскопанные  ямы,  то на территории современного Казахстана и Средней Азии, включая  и  Кыргызстан,  они  представляли  собой  наземные  погребальные  камеры, сложенные из обработанных 
брёвен. Такие погребальные  сооружения  для  усопших,  строились на земле из брёвен  тянь-шаньской  ели  и  покрывались 6–7-и метровыми брёвнами в семь накатов, а сверху всё  засыпалось землей, и получался курган высотой 20 – 30 м. Также, имели  место и подземные погребения. Для  подземной формы были характерны,  глубокий подземный ход и потайные  комнаты. Насыпи могильников были  однотипными. Первый слой состоял  из камня и крупной щебёнки, второй  слой – из чия и кустарников, а верхний – из земли.</p>
              """,
                    defaultTextStyle: paragraphTextStyle,
                    useRichText: true,
                  ),
                  Image.asset("assets/images/paragraphs/sacks-burial.jpg"),
                  Text(
                      "Склеп наземного погребения саков (вид снаружи без насыпи).",
                      style: paragraphTextStyle,
                      textAlign: TextAlign.center),
                  SizedBox(height: 12.0),
                  Image.asset("assets/images/paragraphs/sacks-union.jpg"),
                  Text("Сакские племенные союзы (VIII–III вв. до н. э.).",
                      style: paragraphTextStyle, textAlign: TextAlign.center),
                  Html(
                    data: """
<center><b>Царские курганы сакского времени обнаружены:</b></center>
<p>В Чуйской долине на юге Казахстана, на  правом берегу р. Или.  От сакских племен, обитавших в Чуйской  и  Таласской  долинах,  до  нас  дошли  бронзовые котлы, наконечники стрел. Саки  широко  освоили  горные  районы  ИссыкКульской котловины и Центрального ТяньШаня. Погребальные инвентари представлены в могильнике Туура-Суу в долине р. Тон.  Здесь  найдены: предметы вооружения; элементы конского украшения, золотые бляшки  выполненные в зверинном стиле. На юге Кыргызстана в Узгенском оазисе,  в могиле обнаружен бронзовый котёл с двумя ручками, серебрянный кувшин, железные  кожи, глинянный сосуд, наконечники стрел.</p>
              """,
                    defaultTextStyle: paragraphTextStyle,
                    useRichText: true,
                  ),
                  Image.asset("assets/images/paragraphs/sacks-weapons.jpg"),
                  Text("Кинжалы, наконечники стрел и копий.",
                      style: paragraphTextStyle, textAlign: TextAlign.center),
                  SizedBox(
                    height: 12.0,
                  ),
                  Html(
                    data: """
Особенно  следует  выделить  могильник  Иссык,  расположенный в долине  Заилийского  Ала-Тоо,  о  богатстве и пышности погребального  инвентаря,  говорят  золотые  изделия  (их всего 4000); меч, кинжал, серебрянные и бронзовые сосуды (всего 31)
              """,
                    defaultTextStyle: paragraphTextStyle,
                    useRichText: true,
                  ),
                  Image.asset("assets/images/paragraphs/goldman.jpg"),
                  Text("«Золотой человек»",
                      style: paragraphTextStyle, textAlign: TextAlign.center),
                  SizedBox(
                    height: 12.0,
                  ),
                  Html(
                    data: """
<center><b>Основные направления хозяйственной деятельности</b></center>
<p>Саки северной части Кыргызстана, занимались главном образом животноводством. А саки Ферганской долины, наряду с разведением скота, занимались и земледелием, выращивали пшеницу, ячмень, просо. </p>
<p>• Саки занимались кочевым скотоводством, разводили мелкий и крупный рогатый скот, особое  место  занимало  коневодство,  разводили  высокопородистых лошадей, двугорбых верблюдов.</p>
<p>• У саков была развита металлургия и ремесло.  В основном из бронзы изготавливали оружие,  орудия труда, конские упряжки, ритуальные  предметы. Изготавливали изделия из керамики, занимались ткачеством, кожевенным производством, обработкой кости и т. д.</p>
<p>• жилище саков было  разборным, напоминавшим юрту; </p>
<p>• в декоративно-прикладном искусстве  саков преобладали  изображения домашних животных и  хищных зверей;  </p>
<p>• из бронзы изготовляли украшения.</p>
<p><center><b>Вооружение саков.</b></center>
– оружия дальнего боя: лук и стрелы и др. <br>
– оружия ближнего боя: кинжал (акинак), меч, боевой топор, булава, копье. <br>
– доспехи для воинов: панцирь, шит, металлический шлем. <br>
– войска состояли: из пеших и конных войск  (легкая пехота и тяжелая  кавалерия) <br>
</p>
<p><center><b>Религия саков</b></center>
У саков существовали различные  культы: предков, огня, коня, солнца  и других небесных светил. После  смерти тело царя бальзамировали и  мумифицировали, в честь него сооружали гробницу курганного типа.</p> 
<p>Ювелирные изделия из золота,  бронзы и керамики, тематическое  содержание нанесённых на них   изображений, отражали мировоззрение и философские взгляды  древних саков.</p>
<center><b>Саки в мировой истории</b></center> 
<p>В результате завоевательной политики Ахеменидской державы в VII в.  до н. э. саки тиграхауда вступают в ожесточённую борьбу за независимость с  персидском царём Киром II. Сочинения Геродота свидетельствуют о том, что  Кир II считал себя богоподобным и непобедимым.</p>
<p>В 530 г. до н. э. Кир II выступил во главе огромного 200-тысячного войска, в поход для покорения саков тиграхауда. 
Войска саков возглавила царица Томирис. Несмотря на превосходство  сил,  персы  потерпели поражение, мечтавший о  мировом господстве Кир II был  обезглавлен. </p>
<p>Более  успешным  были  походы  другого  правителя  из  династии  Ахаменидов  –  Дария I.  В  519– 518 гг. до н. э. он сумел победить  саков и обложить их данью. И  всё  же персы не смогли распространить  свою  власть  севернее  реки Сыр-Дарьи. Саки, жившие  в северной части Кыргызстана,  не допустили иранских завоевателей на свою землю.
</p>
              """,
                    defaultTextStyle: paragraphTextStyle,
                    useRichText: true,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Image.asset("assets/images/paragraphs/Kir-II.jpg"),
                      Image.asset("assets/images/paragraphs/Dariy-I.jpg"),
                      Image.asset("assets/images/paragraphs/Tomiris.jpg"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text("Кир II.",
                          style: TextStyle(
                              fontFamily: 'Georgia',
                              fontSize: 13.5,
                              color: Colors.black87),
                          textAlign: TextAlign.center),
                      Text("Дарий I.",
                          style: TextStyle(
                              fontFamily: 'Georgia',
                              fontSize: 13.5,
                              color: Colors.black87),
                          textAlign: TextAlign.center),
                      Text("Томирис.",
                          style: TextStyle(
                              fontFamily: 'Georgia',
                              fontSize: 13.5,
                              color: Colors.black87),
                          textAlign: TextAlign.center),
                    ],
                  ),
                  Html(
                    data: """
<p>Позднее, саки установили мирные и военные связи с персами и сражались на стороне Ахаменидов в решающих битвах греко-персидских  войн (500–449 гг. до н. э.). В марафонском сражении (490 г. до н. э.)  большую отвагу и мужество проявили воины-конники. Хорошо обученные воинскому делу, саки оказали значительную помощь персам  в завоевании Греции и Египта. По данным письменных источников, в  городах Египта и Вавилона существовали лагеря, специально сооруженные для войск саков.  </p>
<p>Ещё одна страница истории саков связана с завоевательными походами Александра Македонского. Сакские отряды в составе персидских  войск принимали участие  в сражениях с армией Александра Македонского при Иссе (333 г. до н. э.) и Гавгамелах (331 г. до н. э.).</p>
<p>Разгромив в Месопотамии в 331 г. до н. э. объединенные силы персов  и саков, войска Македонского в 329 г. до н. э. вышли к берегам СырДарьи. Здесь завоеватели встретили упорнейшее сопротивление сакских племен.  Несмотря на превосходство, греко-македонцы не смогли  продвинуться в глубь занимаемых саками территорий.</p>
<p>В середине II в. до н. э. населявшие Центральной Тенир-Тоо сакские  племена подвергались нашествию со стороны усуней, которые двигались из Восточного Туркестана. Это вынудило саков Семиречья мигрировать на запад, в глубь Средней Азии. Оставшаяся часть саков ассимилировалась с усунями, захватившими эти земли.</p>
<center><b>Государство хуннов (гуннов)</b></center>
<p>Если племена саков имели статус государственности, то наличие государств хуннов, усуней, даваньцев и кангуйцев (кангюй) не вызывает сомнений. Главным доказательством этого являются китайские письменные источники. В них говориться о взаимоотношениях Китая с этими государствами.</p>
<center><b>Государство хуннов</b></center>
<p>• В  китайских  источниках  о  племенах хуннов  упоминают  начиная  с  1 тысячелетия  до н. э. </p>
<p>• Хунну (на кит. сюнну) –  воинственные  кочевые  племена.  Обладали  огромной территорией от  Тихого океана и Северного Китая до Алтая и  Семиречья. </p>
<p>• Согласно  источникам  хунны  делились на 24 рода,  во  главе  которых  стояли  начальники  поколений  –  старейшины. </p>
              """,
                    defaultTextStyle: paragraphTextStyle,
                    useRichText: true,
                  ),
                  Image.asset("assets/images/paragraphs/Hunns-empire.jpg"),
                  Text("Империя хуннов (II в. до н. э. – IV в. н. э.)",
                      style: paragraphTextStyle, textAlign: TextAlign.center),
                  Html(
                    data: """
<center><b>Империя Хуннов</b></center>
<p>В конце III в. до н. э. хуннские племена объединились под началом  Модэ (Маодунь) шаньюйя, который за короткий срок создал мощную,  мобильную и дисциплинированную армию.</p>
<p>Модэ удалось нанести поражение и подчинить ряд крупных племён как дунху,  юэчжи, шаньжунов, динлинов, племена  обитавшие на Саяно-Алтае (203–202 гг.  до н. э.). В 201 г. до н. э. Модэ подчинил себе независимые племена – гяньгуней, синьли, кюйше. Учёными доказано, что гяньгуны были кыргызами. В  200 г. до н. э. хунны нанесли поражение 30 миллионной Китайской империи  и заставили их платить дань.</p>
<p>Модэ  шаньюй  (Маодунь) – основатель империи хуннов. В своих  завоеваниях  дошёл  до  среднего  течения  Енисея  и  Тувы  на  севере,  на западе до Таримского бассейна, на востоке  до  Маньчжурии.  Модэ  руководил страной хуннов в 209–174 г. до н. э.</p>

              """,
                    defaultTextStyle: paragraphTextStyle,
                    useRichText: true,
                  ),
                  Image.asset(
                      "assets/images/paragraphs/Hunn-power-structure.jpg"),
                  Html(
                    data: """
<p>Верховный правитель имел собственный отряд в 10 тыс. человек. Чины  пониже имели отряды поменьше – до нескольких тысяч. Таким образом, в системе руководства насчитывалось 24 темника – управляющих  определенной  территорией, а также руководством родов и аксакалы  династий. </p>
<p>Китайцы,  убедившись  в  том,  что своими силами не одолеть  хуннов, создали антихуннскую  коалицию,  куда  входили  племена динлинов, ухуаней и усуней. В 71 г. до н. э., выступив   совместно  с  войском,  нанесли  хуннам сильное поражение, после чего в 56 г. до н. э. хуннская  держава раскололась на две части: Южную группу хуннов возглавил шаньюй Хуанье (позднее  они  приняли  подданство  Китая), а северную группу возглавил таниркут Чжи-Чжи. Северные хунны, объединившись со  среднеазиатскими  племенами,  откочевали на запад, сохранив  свою независимость. </p>
<p>У хуннов было три  аристократических звания:<br>
• Представители  ханского рода<br>
• Именитые аристократы<br>
• Руководители родов</p>

<center><b>Усуньское государство</b></center>
<p>Название «Усунь», их этическая принадлежность до сих пор остается  спорной. По одной версии «усунь», в переводе с древнетюркского означает «народ десяти родов» (ус – род, ун – десять). Согласно другой версии,  этноним произошел от названия реки Упса (Узун), протекающей в Восточном Туркестане. Значение слова «усунь», некоторые ученые связывают с  этнонимом «асман», т. е. «небо» или «тенир». В некоторых книгах этноним  «усунь», согласно китайской транскрипции у-ши расшифровывается как,  «поколение воронов».</p>
<p>Большинство  исследователей  усуней  относятся  к  тюркоязычным народам, хотя этнологический тип не  был характерен для коренного населения Туркестана: это были русобородые, голубоглазые люди.</p>
<p>Первоначально, усуни кочевали по соседству с хуннами и юэчжи – на  территориях к западу от Великой Китайской стены. В результате степной  войны с хуннами усуни были разбиты. Часть из них в 160 г. до н.э. подчинив саков и юэчжи, переселилась на новые земли в районе Тенир-Тоо и  Семиречья.  В результате в середине II в. до н. э. возникло Усуньское государство,  которое на востоке граничило с хуннами, на западе с кангуями, расселившимися в долинах Таласа, на  юге – с народами Ферганы и Восточного  Туркестана. Северные владения усуней простирались до озера Балхаш.  Столица государства под названием Чигу, или Чигучен (в переводе «город Красной долины») была расположена в юго-восточной части ИссыкКульской котловины. История этого государства насчитывала 700 лет, до  V в. н. э. В V веке усуни влились в состав тюркоязычных племен. </p>
<p>По данным китайских письменных источников, владение государства Усунь насчитывало 630 тысяч человек. Численность их армии составила 188 тысяч  воинов.  Усунь  занимало  территорию  протяженностью с востока на запад около 3 тысяч км. В государственном аппарате было не менее 16 тыс чиновников.</p>
<p>Чигу (Чигучен) – столица усуньского государства.  Название г. Чигучэна переводится с китайского «город красной долины», сами усуни называли «Кункат»  то есть «Город бега», где находилась резиденция Кунбега. По сведениям китайских источников город был  построен в первой половине 1 в. до н. э. по просьбе китайской принцессы, которая была замужем за  усуньским Кунбагом. Город был важным политическим центром и перевалочным пунктом на Великом  Шелковом пути. </p>

<center><b>Политическое устройство усуней</b></center>
<p>Усуньское государство представляло собой монархическое государство кочевников. Монарх имел титул кюнбаг (кунбег). Власть монарха  была ограничена: прежде чем принять окончательное решение по важному  государственному вопросу, его рассматривал и обсуждал Совет старейшин.  Кроме того, существовала организационная система управления государством. Структура власти состояла из трех частей: центр, левое и правое  крыло. Центр возглавлял кюнбаг, ему подчинялись два крыла.
</p>
              """,
                    defaultTextStyle: paragraphTextStyle,
                    useRichText: true,
                  ),
                  Image.asset(
                      "assets/images/paragraphs/Hunn-power-structure2.jpg"),
                  Html(
                    data: """
<center><b>Хозяйство и культура усуней</b></center>
<b>Хозяйство:</b><br>
<p>• Основным видом деятельности  усуней являлось скотоводство.  Они разводили лошадей, коров,  овец и коз. </p>
<p>• Одна часть занималась кочевым  скотоводством.  Богатые  усуни  содержали до пяти тысяч голов  лошадей.  </p>
<p>• Другая  часть  освоив  земледелие,  создавала  оседлые  поселения. Остатки жилых помещений обнаруженные в Чуйской  и  Иссык-Кульской  долинах  представляют  собой  пример  земледельческих  поселений,  с  сетью  искусственного  орошения. Усуньские поселения распологались в горах и долинах  Тянь-Шаня, Алая, Таласа. </p>
<p>• Важную роль играла охота. </p>
<p>• Для  усуней  был  характерен  высокий уровень развития ремесла. </p>
<b>Культура:</b><br>
<p>• В научной литературе усуньская  культура  рассматривается  в  тесной связи с сакской. Внешне усуньские курганы мало чем  отличаются от сакских захоронений. Поэтому наука именует  сакские  и  усуньские  курганы  одним термином – сако-усуньские. Усуньские курганы найдены в Иссык-Кульском регионе и в Чуйской долине.  </p>
<p>• На обряде погребения, покойника хоронили вместе с инвентарем: предметами быта и пищей. </p>
<p>• В веровании усуней существовала магия, тесно переплетенная  с  шаманизмом  –  магический культ очищения огнём. </p> 
<p>• Среди усуней были распространены развитые формы религиозных  представлений  –  культ  предков и культы природы, небесных светил – солнца, луны,  звезд и жертвоприношение. </p>
<p>• Усуни проживали в юртах, кирпичных и каменных домах. </p>

<center><b>Государство Давань (Дабан)</b></center>
<p>История этого государства насчитывает более тысячи лет. В IV– III вв.  до н.э. Фергана представляла собой, государственное объединение «оазисного» типа, где каждый город или большое поселение имели своё самостоятельное управление.</p>
<p>Сведения о Фергане в Китайских источниках  даются  по  описанию  Чжан  Цзяна, дважды побывавшего (в 128 г. и  115 г. до н. э.) на Тянь-Шане и Фергане</p>
<p>Во II в. до н.э. Фергана представляла собой сильное государство с развитой оседлой земледельческой культурой. Столицей Ферганы был город  Эрши. В Фергане проживало не менее полумиллиона человек, жители её  были европеоидами: они имели голубые глаза и густые бороды.</p>
<center><b>Система управления</b></center>
<p>• Появление государства Давань являлось результатом объединения  множества небольших городов-государств,а так же государств-оазисов. </p>
<p>• Правители этих государств подчинялись центральной верховной  власти, но для Дабана была характерна ограниченная форма монархии. </p>
<p>• Верховный правитель имел двух советников – визирей. </p>
<p>• Важные государственные вопросы правитель выносил на Совет  старейшин. • Совет старейшин играл важную роль в общественной, политической жизни страны, обладал большими полномочиями. </p>
<p>• Совет старейшин принимал решение об отрешении правителя от  власти и даже о предании его смертной казни. </p>
<p>• При участии Совета старейшин объявлялись войны, заключались  мирные договоры, устанавливались приоритеты международных  взаимосвязей. </p>

<center><b>Хозяйство</b></center> 
<p>• Было развито земледелие, основанное на искусственном орошении. Возделывали пшеницу, рис, ячмень просо, кроме этого вырашивали люцерну  и виноград. </p>
<p>• Важной отраслью хозяйства являлось разведение породистых скакунов,  прославленных далеко за пределами Ферганы. В легендах, бытовавших  среди населения, говорилось об их происхождении от волшебных небесных скакунов. Наскальные изображения лошадей имели культово-магическое значение. </p>
<p>• Развивались разные виды ремесел – гончарное, ткацкое, ювелирное и др. </p>
<p>• Было развито градостроительство. В Давани насчитывалось до семидесяти  больших и малых городов. </p>
<p>• Широко была развита торговля. Даваньцы производили немалое количество товаров для продажи в других странах. Возводились караван-сараи,  строились дороги. </p>
<p>• Географический диапазон торговых контактов Дабана был широк – Северная Африка и Рим, Западная Азия и Индия, Восточный Туркестан, Китай и  др. регионы и государства. </p>
<center><b>Политическая история</b></center> 
<p>• В основе внешнеполитической стратегии государства лежал принцип обороны. Войско Даваньцев насчитывало около 60 тысяч человек. </p>
<p>• В конце второго века до н.э. при императоре У-ди китайцы дважды (в  103 г. до н. э., 101 г. до н. э.) пытались завоевать государство Давань. Однако им не удалось покорить всю Фергану. </p>
<p>• В VI в. н. э. государство Давань оказалось в составе тюркского каганата,  где правили тюркские наместники.</p>

<p><b>Царь Мугуа</b> –  правитель  Ферганы. Во время нашествия китайских войск на  государство  Давань  103– 99 г. до н. э. героически защищал г. Эрши, однако он  был предательски убит.</p>
<p><b>Ли Гуанли</b> – китайский полководец.  По приказу императора У-ди вторгался в 103 г. до н. э. с войском в Фергану,  однако он потерпел поражение. Второй поход на Фергану состоялся в 101– 99 гг. до н. э., на этот раз ему удалось  захватить г. Узген, осадить г. Эрши.</p>

<center><b>Государство Кангюй (Кангуй)</b></center> 
<center>Кангюй – древнее государство в Средней Азии ( III в. до н. э. – VI в. н. э.)</center>  
<p>Источники сообщают о Кангюе, как о большом государстве, населенном кочевыми племенами, но имеющем города. В Кангюе проживало 600  тысяч человек. Численность армии составляла 120 тысяч воинов. Владения  этого государства простирались от озера Иссык-Куль на Востоке, Ташкентским оазисом на Юге, и низовьями Сыр-Дарьи на Севере, а столица государства г. Битянь была расположена в районе современного Тараза на р. Талас.</p>

<p>Население государства Кангюй жило  патриархально-общинным строем. Основным занятием было кочевое скотоводство и домашнее ремесло.</p>
<p>Кангюйцы установили тесные дипломатические, торговые и культурные  взаимоотношения  с  государствами  Усунь и Давань. Вели торговлю с Китаем. В VI в. их подчинили тюрки.</p>
<p>Власть Кангюйского правителя простиралась до Северных берегов Каспия, где от него зависел Яньцай –  союз  сармато-аланских  племён.  В  Средней Азии Кангюйю подчинялись  пять  малых  владений:  Сусе,  Фуму,  Юени, Ги, Юегянь.</p>
<p>Кангюйцы  обожествляли  силы  природы:  солнце,  луну,  существовал  культ  предков.</p>
<p><b>Культ предков</b>  –  почитание душ умерших родственников.  В  культе  предков  забота  о  душах  умерших  (жертвоприношение,  молитвы  и т. п.)  осознаётся  как  необходимая  обязанность  для  живых  родственников  в  связи с верой в покровительство мертвых.</p>


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
