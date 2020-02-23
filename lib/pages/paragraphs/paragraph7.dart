import 'package:flutter/material.dart';
import '../../style.dart';
import 'package:flutter_html/flutter_html.dart';

class Paragraph7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          backgroundColor: appBarColor,
          title: Text('§7.Кыргызстан на пути к государственности'),
        ),
        body: Scrollbar(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text('§7.Кыргызстан на пути к государственности',
                      style: paragraphBoldTextStyle,
                      textAlign: TextAlign.center),
                  Html(
                    data: """
<center><b>Государство Караханидов </b></center>
<p>Термин «караханиды», для обозначения династии и государства был  введен в научный оборот в ХIХ в. русскими исследователями Востока по титулу «кара-хан». Кыргызы средневековья вкладывали в слово «кара» понятие «великий, большой» и т. п. Таким образом, название «карахан» означало  «великий хан». Вопрос о происхождении караханидской династии остается  спорным. Большинство ученых относили их к трем народностям: карлуки,  чигилы и ягма.</p>
<p><b>Абд-ал-Керим Сатук Буура Кара-хан</b> (год рожд. неизв.) – основатель государства Караханидов в 942 г. Происхождением он из племени чигиль. Воспитывался у брата отца Огулчак  Кадыр-хана. Принял ислам со своими приближенными в количестве 50 человек. Имел двух  сыновей по имени Байташ Арслан-хан (Муса)  и Тонга элик (Сулейман). После смерти Сатука  власть перешла к Мусе. Он объявил ислам в качестве государственной религии.</p>              
                          
                            """,
                    defaultTextStyle: paragraphTextStyle,
                    useRichText: true,
                  ),
                  Image.asset("assets/images/paragraphs/Satuk-Buura.jpg"),
                  Text("Сатук Буура Кара-хан.",
                      style: paragraphTextStyle, textAlign: TextAlign.center),
                  Html(
                    data: """
<p>В каганате особое  место занимал  институт соправительства, так  называемая дуальная система. Это  оказывало сильное  влияние на политическую жизнь  в государстве.  Разделение власти  у караханидов сложилось в результате длительной  борьбы между  двумя ветвями династии «Алидами»  и «Хасанидами»</p>
<p>Столицей каганата был город Баласагун (развалины городища Бурана в окрестностях современного г. Токмака). Второй столицей считался г. Узген.</p>              
              """,
                    defaultTextStyle: paragraphTextStyle,
                    useRichText: true,
                  ),
                  Image.asset("assets/images/paragraphs/Karahanidy.jpg"),
                  Text("Караханидское государство (X–XII вв.)",
                      style: paragraphTextStyle, textAlign: TextAlign.center),
                  Html(
                    data: """
<p>В результате противостояния двух ветвей династии в 1041–1042 г. Каганат раскололся на два отдельных караханидских государств
1. <b>Восточное</b> со столицей в Баласагуне  (позднее в Кашгаре)<br>
Владение: Восточный  Туркестан  и  Семиречье<br>
2. <b>Западное</b> со столицей в Узгене  (позднее в Самарканде)<br>
Владение: Мавераннахр т. е. междуречье,  лежащее между Аму-Дарьей и  Сыр-Дарьей.
</p>
<p>В 1128 г.  Ибрагим ибн Ахмад,  удельный  правитель Баласагуна, призвал на  помощь кара-китаев, так как испытывал притеснения со стороны карлуков  и канглы. Кара-китаи захватили Баласагун, привели в покорность карлуков.  В результате Кара-китаи стали управлять страной от имени династии караханидов.</p>
<p>В конце XII в. на территории караханидов образовалось несколько самостоятельных караханидских княжеств, абсолютно независимых друг от друга  и от верховного правителя, резиденцией которого традиционно считались  Самарканд и Баласагун.</p>

<center><b>Памятники культуры караханидов</b></center>
<p>• Для развития средневековой монументальной архитектуры большое значение имело введение ислама как государственной религии. Повсеместно  строились здания и сооружения, предназначенные для выполнения религиозных обрядов.</p>
<p>• В архитектурном комплексе города важную композиционную роль играли  высокие башни при мечетях – минареты, с которых призывали мусульман  на молитву. </p>
<p>• Одним из самых ярких образцов средневековых минаретов в Кыргызстане  по праву считаются башня Бурана и Узгенский минарет. </p>
<p>• Значительный интерес представляют мавзолеи, сохранившиеся до наших  дней в Узгене. Три мавзолея вытянуты по одной оси и пристроены впри</p>
тык друг к другу. Наиболее ранним из них является Средний мавзолей,  построенный на рубеже XI – XII вв. </p>
<p>• К первой половине или середине XII в. относится мавзолей  Шах-Фазиль в  средневековом городе Сафид-Булане (с. Гульстан Ала-Букинского района).</p>

<center><b>Развитие социально-философской мысли</b></center>
• Значительную роль в философской мысли эпохи караханидов сыграли  Махмуд Кашгари и Жусуп Баласагуни – крупнейшие мыслители и видные  ученые ХI в. 
<p><b>Дивану лугат ат-тюрк</b>  (Словарь тюркских наречий) –
Составлен  Махмудом  Кашгари.  В нем полностью отражен: – словарный состав тюркских племен,  входивших  в  состав  государства  Караханидов;  – большая часть образцов фольклора  (образцов  народной  поэзии,  пословиц, поговорок и т. п.);  – имеются исторические и географические  сведения  о  племенном составе тюрков, об озерах,  землях,  городах  и  населенных  пунктах в пределах государства  Караханидов.<br>
<b>Кутадгу билиг</b> (Благодатное знание) –
Выдающееся  произведение  ранней  тюркоязычной  литературы.  По жанру труд Жусупа Баласагуна  относится  к  сочинениям  назидательно-дидактического  характера,  к произведениям этико-моралистической направленности. Автор в поэтической форме излагает о пользе  учения и знания, и что эти два блага  приносят  человеку  просветление  и счастье. Люди, обладавшие властью,  должны  управлять  народом  на основе закона и справедливости  и только тогда они могут добиться  гармонии в обществе.
</p>

<center><b>Государство Кара-китаев</b></center>
<p>Государство  кара-китаев  (киданей)  создавалось  и крепло в середине Х в.  Впервые оно появилось на  территории  современной  Монголии и северо-восточной части Китая в результате  объединения  восьми  монгольских племен.</p>
<p>Кара-китаи покорили Северный Китай, а также подчинили себе Уйгурию и создали обширную державу.  В 937 году кара-китаи дали своему  государству название: империя Ляо  (железная). Еще через десять лет кара-китаи овладели Южным Китаем.  Государство  кара-китаев  просуществовало более ста лет.</p>

<center><b>Переселение Кара-китаев в Семиречье</b></center>
<p>Переселение кара-китаев в Семиречье  состоялось  в  1041– 1042 гг., т. е. задолго до прихода  Елюй  Даши.  В  Семиречье  16  тыс.  кибиток  поселились,  еще  при Арслан-хане Сулеймане, который им разрешил поселиться  между Китаем и владениями караханидов, за это они обязались  защищать границы.</p>
<p>Разгромленная маньчжурами другая  часть Кара-китаев в 1132 г. отступила  на запад в Семиречье. Поселенцы присоединились к своим соплеменникам,  а затем они вместе завоевали весь Туркестан. Елюй Даши прибыл в уйгурский город Беш-Балык (Бейтин), там  он созвал курултай и на этом курултае  он принял титул «Гурхана», т. е. стал  ханом всех 18 племён.</p>
<p>В 1134 г. правитель Баласагуна Ибрагим ибн Ахмад обратился за помощью к  гурхану,  Елюй  Даши  направил  свое  войско  в  Баласагун и  оттеснил  кочевников  подальше.  Когда  Гурхан оценил политическую ситуацию и убедился в  слабости  правителя  Баласагуна,  он  устранил  Ибрагима  и  подчинил  Семиречье. В 1137 г. Кидани  проникли  в  Мавераннахр и  дошли до Самарканда. В  Катванской  степи  они  дали  сражение  (1141 г.) объединенным  силам  сельджукского султана Санжара.</p>

<center><b>Найманы</b></center>
<p>Найманы – монгольское  племя,  состоявшее  из  девяти родов. Во время  правления  Даян-хана  (или  Таян-хан)  в  XIII  вв. племя возвысилось,  однако в 1204 г. оно потерпело  сокрушительное поражение от Чингис-хана,  в результате  племя было рассеяно.</p>
<p>В 1208г. на земли Гурхана бегут найманские и меркитские племена, спасаясь от разгрома, учиненного им Чингис-ханом на Иртыше. Сын найманского хана Кучулук перешел на службу к Гурхану и  собрав остатки своего народа, осел в Семиречье.  Воспользовавшись ослаблением управления каракитаев в 1210 г. Кучлук напал на Узген и захватил  казну гурхана, а через год при помощи Хорезмийско-Самаркандской караханидской армии разгромивший  кара-китаев,  Кучулук  стал  полновластным хозяином государства кара-китаев.</p>
<p>Кучулук в своих владениях объявил ислам вне закона и начал гонения на семиреченских мусульман. Однако народ, справедливо считая его узурпатором и  тираном, не желал ему подчиняться, и мусульмане обратились за помощью к  Чингис-хану, в результате вскоре прибыло монгольское войско во главе с Джебе-ноёном и завоевало кара-китаев. Таким образом, просуществовавшее более  90 лет государство кара-китаев и найманов было сметено ордами Чингис-хана.</p>

<center><b>Эпоха Монгольской империи</b></center>
<p>Предводитель племени монголов Темучин  проявил  незаурядные  способности  в  борьбе  за  власть.  В  конце  концов он подчинил себе всех татар,  найманов,  онгутов  и  ряд  тюркских  племён. В 1206 г. на курултае монгольских феодалов государство было провозглашено империей, а Темучин принял имя «Чингис-хан». Он за короткий  срок покорил все соседние народы.</p>
              """,
                    defaultTextStyle: paragraphTextStyle,
                    useRichText: true,
                  ),
                  Image.asset(
                      "assets/images/paragraphs/Chingizhan-monument.jpg"),
                  Text("Статуя Чингис-хана в Монголии. Высота памятника 40 м.",
                      style: paragraphTextStyle, textAlign: TextAlign.center),
                  Html(
                    data: """
<p>Перед  наступлением  на  Среднюю  Азию  Чингис-хан  разделил свою 150 тыс. армию на четыре корпуса:<br>
1.Первый, во  главе с сыновьями Чагатаем и Угэдэем  выделил для  осады Отрара.<br>
2.Второй, во главе со старшим  сыном Джучи  послал на север  для завоевания  городов по нижнему течению  Сыр-Дарьи.<br>
3.Четвертый, на  Бухару и Самарканд возглавил  сам Чингис-хан  с туменами под  командованием  Тулуя, Джэбэ и  Субэдэя.<br>
4.Третий корпус, во  главе с Алак-ноёном был назначен  для покорения  городов Бенакент  и Ходжент по  верхнему течению Сыр-Дарьи.</p>

<p>Одновременный удар по указанным направлениям сковывал, перегруппировку сил государств Средней Азии. В результате отсутствие военно-политического единства государств этого региона, обеспечило армии Чингис-хана внушительную победу.</p>
<p>Еще при жизни Чингис-хана Монгольская империя была разделена между  его сыновьями. Владения второго сына Чингис-хана Чагатая (годы его жизни 1187-1241), включили Восточный Туркестан, Семиречье и Мавереннахр,  а также земли левобережья Аму-Дарьи – Балх, Бадахшан, Газни, Кабул и  районы, включительно до р. Синд. Орда (ставка) Чагатая находилась в Кульджинском крае, на южной стороне р. Или.</p>
            
              """,
                    defaultTextStyle: paragraphTextStyle,
                    useRichText: true,
                  ),
                  Image.asset("assets/images/paragraphs/Chingizhan-power.jpg"),
                  Text("Держава Чингис-хана (1206–1227 гг.)",
                      style: paragraphTextStyle, textAlign: TextAlign.center),
                  Html(
                    data: """
<center>Внутренняя политика Чагатаидов</center>
<p>После покорения Средней Азии, среди монгольских завоевателей наметились две тенденции по отношению к оседлому населению.</p>
<p>Выразителем первой тенденции,  были  сторонники  так  называемых «традиционалистов», которые были противниками оседлой жизни.</p>
<p>Выразители  второй  тенденции, были заинтересованы в  централизации власти, в развитии земледелия, ремесел и  торговли.</p>
<p>Чагатай не предпринимал никаких мер для сохранения единства улуса. Он  не стремился к его централизации, к примирению осёдлого и кочевого населения. В конечном счете, борьба двух тенденций тюрко-могольской верхушки закончилась фактическим разделением Чагатайского улуса на Западную  и Восточную часть в середине ХIV в.</p>

<center><b>Государство Хайду-хана </b></center>
<p>В 1269 г. в долине р. Талас состоялся курултай кочевой знати бывших  улусов Угэдэя и Чагатая, положивший начало образованию нового государства в восточной части Чагатайского улуса. Основателем нового государства  выступил внук Угэдэя – Хайду, которому удалось восстановить владения  деда, опираясь на чагатаидов.</p>
<center>Политика Хайду-хана</center>
<p>• Внешняя политика Хайду-хана ничем не отличалась от своих предшественников, и в традиционном духе продолжалось расширение границ за  счет  владений  соседних улусов.  Более того,  Хайду-хан  начал борьбу с  Хубилаем за всемонгольский трон. </p>
<p>• Хайду приложил усилие для возрождения хозяйственной жизни страны. </p>
<p>• Принимал ряд мер по ограничению хищнической эксплуатации населения,   грабежа и произвола со стороны кочевой знати. </p>
<p>• Для обеспечения поступлений в государственную казну и регулярных налогов систематизировал налогообращение.</p>
<p>• Регламентировал землепользование, обязывал кочевых феодалов  содержать скот в определенных им местах, не допуская выпаса его на засеянных  полях. </p>
<p>• Согласно денежной реформе регламентировалась регулярная чеканка золотых (динаров) и серебрянных (дирхемов) монет, и медные фельсы одинаковой пробы и веса на всей территории государства.</p>
<p>Реформы Хайду-хана способствовали общему возрождению Семиречья и  всего Притяньшанья. Денежные реформы хана способствовали развитию  денежной торговли и товарного производства, в целом обеспечивался общий подъём хозяйства.</p>
<p>Государство Хайду просуществовало около ста лет, и к 40-м годам  ХIV в. держава распалась на два самостоятельных государства: Чагатайский  улус (Мавереннахр), жители которо го продолжали именовать себя чагатаями, и Моголистан на землях Семиречья, Тянь-Шанья, Восточного Туркестана и Джунгарии. </p>
<center><b>Памятники культуры Монгольской эпохи</b></center>
<p>• Остатки  дворцовых  комплексов  на  городищах  Ашпара  и  Серетинском  (Чуйская долина), Ак-Тюбе и Садыр-Кургане (Таласская долина), Акчий  в Кетмень-Тюбе. </p>
<p>• Несколько крепостей, караван-сараев и отдельных построек XII – XV вв.  обнаружено в Иссык-Кульской котловине. </p>
<p>• Мавзолей Канизек-хатун (Таласская долина) был сооружен в 1334 г. и  установлен над могилой женщины из правящего рода Чагатаидов (мавзолей получил известность как “Гумбез Манаса”).</p> 
<p>• В  XII – ХV вв.  существовали  три  системы письменности: сирийская,  арабская и старотюркская. </p>
<p>• В религиозном отношении большая  часть  кочевого  населения  оставалась шаманистами, наряду  с ними  существовали  исламские  общины.  Буддизму  и  христианству  покровительствовали  некоторые  ханы  (Гуюк,  Мунке),  о  чем  свидетельствуют  несторианские  надписи  и  кладбища,  армянская  церковь  пр.  Ионна на Иссык-Куле. </p>
              """,
                    defaultTextStyle: paragraphTextStyle,
                    useRichText: true,
                  ),
                  Image.asset("assets/images/paragraphs/Christian-cross.jpg"),
                  Text(
                      "Христианские кресты на кайраках IX – XIV вв. из Семиречья. ",
                      style: paragraphTextStyle,
                      textAlign: TextAlign.center),
                  Html(
                    data: """
<center><b>Моголистан и походы Амир Темира </b></center>
<p>В 1345 г. был убит заговорщиками хан Казан – последний чингизид, правивший Чагатайским улусом. Наступил конец монгольского периода истории этого края. Таким образом, в середине XIV в. на востоке Средней Азии  возникло новое государство – Моголистан, т. е. “страна моголов” (тюркские  народы называли монголов “могол”) Основное население Моголистана было  тюркоязычным. Ведущую роль в политической жизни государства играли  крупные феодалы племени дуглат. Лидером племени был Пуладчи.</p>
<p>Не являясь потомком Чингис-хана, Пуладчи не мог претендовать на ханский  престол. Поэтому по его инициативе в 1348 г. 18 летний чингизид ТоглукТемир стал первым ханом Моголистана. Новый хан для укрепления своей  власти в 1354 г. принял ислам и насаждал его на тянь-шаньских монголов.  Источники сообщают что, в один день приняли ислам 160 тыс. человек, но  многие остались язычниками.</p>
<p>Слабая центральная власть и отсутствие связанного с ней аппарата принуждения создали предпосылку распада улусной системы на более мелкие владения местного значения. Между ними происходили частые столкновения за  гегемонию в целом в Моголистане и за его пределами.</p>
<center>Самостоятельные владения Моголистана</center>
• Мангалай-Субэ (монг. букв. «главная» или «авангардная область») – территория Южного Кыргызстана. <br>
• Улус Камар ад-Дина (Северный Кыргызстан) <br>
• Кыпчако-кыргызский улус Баймурат-Черика, кочевавший восточнее. <br>
• Улус ичкиликов (булгачи), кочевавший в Или-Иртышском междуречье. <br>
• Ханство кыргыза Угечи-кашка, в южной части этого междуречья и областях, примыкающих к Монгольскому Алтаю и др.
<p>В 1360–1361 гг. Тоглук-Темир предпринял поход на Мавераннахр. Ему удалось подчинить всю территорию бывшего Чагатайского улуса до Аму-Дарьи, Тоглук-Темир вернулся с большой добычей в Моголистан.</p>
<p>Став ханом Моголистана, Илияс-Кожо продолжил внешнюю политику  отца, умершего от болезни в 1364 г. Он решил завладеть Мавераннахром. В  1365г. армия моголов и войска Мавреннахра сошлись в окресностях Ташкента и Самарканда. Потеряв большую часть воинов, Илияс-Кожо был вынужден увести свою армию обратно в Моголистан.</p>
<center>Походы Амир Темира в Моголистан</center>
<p>В 1370 г. к власти в Мавераннахре пришел знаменитый государственный  деятель Амир-Темир. Столицей владений Темира был город Самарканд. За  время своего правления(1370 – 1405 гг.) Амир-Темир создал великую державу, простиравшуюся от Средиземного моря до Восточного Туркестана.  Завоевал Багдад и Месопотамию, северную часть Индии, большую часть  Сирии. Амир-Темир совершил больше десяти больших и малых грабительских походов на территорию Моголистана в течение 20 лет (1370 – 1390 гг), которые  нанесли для населения неисчислимые бедствия, разорения и насильственный угон в рабство. Амир Темир получал из Моголистана определенное  количество воинского контингента и лошадей для обеспечения войска, и с  этой целью по его приказу огромное количество людей переселяли в Мавереннахр, либо в Западный Тянь-Шань.</p>

              
              """,
                    defaultTextStyle: paragraphTextStyle,
                    useRichText: true,
                  ),
                  Image.asset("assets/images/paragraphs/Amir-Temir-power.jpg"),
                  Text("Держава Амир-Темира (1370 – 1405 гг.)",
                      style: paragraphTextStyle, textAlign: TextAlign.center),
                ],
              ),
            ),
          ),
        ));
  }
}
