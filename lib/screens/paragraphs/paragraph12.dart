import 'package:flutter/material.dart';
import '../../config/style.dart';
import 'package:flutter_html/flutter_html.dart';
import '../../widgets/paragraph-header.dart';

class Paragraph12 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Scrollbar(
            child: SingleChildScrollView(
      child: Column(children: <Widget>[
        ParagraphHeader("assets/images/article-pic12.jpg",
            "§12.Социально-экономическое строительство в период становления советской социалистической системы (1917-1940 гг.)"),
        Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              Html(
                data: """
• С  установлением  диктатуры  пролетариата  коммунисты  во  главе  с  В. И. Лениным приступили к решению одной из самых злободневных  проблем – земельного вопроса. <br>
• Согласно принятому Советской властью декрету «О земле», все земли  объявились государственной собственностью. 
<center>Декрет определил следующие основные направления аграрной политики Советской власти:</center>
– ликвидация частной собственности на землю, конфискация земель у крупных землевладельцев;  <br>
– раздел земли между хозяйствами, исчисляя в равноценных долях, по принципу «землю тем, кто её обрабатывает»; <br> 
– закрепление прав хозяйственников на землю;  <br>
– аннулирование всех долгов крестьян кредиторам и арендодателям, ликвидация натуральных и денежных податей;  <br>
– оказание материально-технической и финансовой помощи крестьянам для  создания своего хозяйства; <br>
– организация первичных сельскохозяйственных кооперативов по совместной обработке земли.

<p>Эти положения аграрной реформы претворялись в жизнь с учётом местных особенностей и на окраинах России. С первых дней Советской власти  в Кыргызстане аграрные отношения начали претерпевать коренные изменения. Крестьяне-бедняки и середняки освобождались от натуральных и денежных налогов. Их долги кредитным организациям и ростовщикам-банкирам аннулировались.</p>

<center><b>Земельно-водные реформы</b></center>
<p>Проводимые в начале 20-х гг. земельно-водные реформы  ставили своей целью исправить существующие с царских  времён  неравенство  между  кыргызскими  дехканами  и  русскими крестьянами по отношению к земле и воде.</p>
              
              """,
                defaultTextStyle: paragraphTextStyle,
                useRichText: true,
              ),
              Image.asset("assets/images/paragraphs/land-water-reform.jpg"),
              Text(
                "Земельно-водные реформы Кыргызстана (1921–1922, 1923–1926 гг.)",
                style: paragraphTextStyle,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 12.0),
              Image.asset("assets/images/paragraphs/land-water-reform2.jpg"),
              Text(
                "Земельно-водные реформы Кыргызстана (1927–1928 гг.)",
                style: paragraphTextStyle,
                textAlign: TextAlign.center,
              ),
              Html(
                data: """
<p>Основные мероприятия земельно-водной реформы были осуществлены в  1921–1922 гг. Реформы проводились в регионах, наиболее подвергнутых  царско-помещичьей колонизации:<br>
• Верненском, Пишпекском, Каракольском уездах ДжетиСуйской области. <br>
• Аулие-Атинском (Таласская долина), Чимкентском, Ташкентском уездах  Сыр-Дарьинской области. <br>
• Джалал-Абадском  и Мархамадском  уездах  Ферганской области.</p>

<p>В итоге земельно-водной реформы 1921–1922гг. и социалистической политики распределения земель были уравнены земельные площади, занимаемые кыргызскими и русскими крестьянами.</p>
• Весной 1923 г. начался второй этап реформы и проведения всеобщего землеустройства населения Джети-Суйской области. Реформа 1923–1926 гг.  имела социалистическую направленность и преследовала цели переориентации крестьян с индивидуального землепользования на коллективное  хозяйствование. <br> 
• По решению Советского правительства каждый крестьянин был волен в  выборе индивидуальной или коллективной формы землепользования.  <br>
• Кроме  того,  земледельцам  предоставили  право  использовать  наёмный  труд. <br>
• Правительство Кыргызской АССР 12-ноября 1927 г. приняло декрет «О  проведении земельно-водных реформ на юге Кыргызстана». По итогам  проведённой в этом регионе реформы были ликвидированы феодальнопомещичьи владения. Все чайрикеры-издольшики, 75% бедных крестьян  получили землю и сельскохозяйственные орудия, налоговые льготы.

<center><b>Кооперации и коллективные хозяйства </b></center>
• В ходе проведения земельно-водных реформ в Кыргызстане появились первые коллективные хозяйства. В 1925 г. в Кыргызстане было  232 сельскохозяйственных кооперативов, членами которых состояло 22  тыс. человек. К 1928 г. по республике в кооперативы было объединено  уже 42% крестьянских хозяйств. Исходя из условий Кыргызстана большое внимание уделено было созданию и развитию животноводческих  кооперативов. <br>
• В ходе реформы появились высшие формы коллективных хозяйств –  колхозы и совхозы. В 1925 г. Кыргызстане было 64 колхоза, 6 совхозов. Толчком к росту колхозного движения послужил Организационный  съезд колхозников Северного Кыргызстана, прошедший в январе 1928 г.,  во Фрунзе. Съезд обсудил состояние колхозного движения в крае и определил меры по активизации. <br>
• Для реализации этой задачи стало уделяться особое внимание укреплению материально-технической базы сельского хозяйства. Если в 1924 г. в  Кыргызстан прибыли три первых трактора, а уже в 1928 г. их количество  достигло 100. <br>
• Таким образом, земельно-водная реформа, политика землеустройства, кооперативно-колхозное  строительство,  производившееся в  Кыргызстане,  создали благоприятные условия для развития сельского хозяйства.

<center><b>Переход к осёдлости</b></center>
• Одним из главных результатов преобразований, осуществлённых в Кыргызстане в 20–30-е годы, стал массовый переход кыргызов к осёдлости. <br>
• Переходу кыргызов к осёдлости до революции мешали тысячелетние традиции кочевого образа жизни, а также колониальная политика царской администрации, отнявшая у кыргызов пригодные для земледелия массивы  земель. <br>
• После установления Советской власти положение изменилось. Однако, в  начале 20-х годов условий для массового перехода кочевого населения на  осёдлый образ жизни ещё не было. Поэтому даже во время земельно-водной реформы кочевников осело немного. Сказывались отсутствие навыков в ведении земледелия, недостаток сельхозинвентаря и т. п. В 1927 г.  62% кыргызов  вели кочевой образ жизни. <br>
• Для ускорения перехода кыргызов к осёдлости был принят ряд мер. Населению, перешедшему к осёдлому хозяйству, сроком на десять лет предоставлялось сельскохозяйственные орудия, тяговый скот, семена, бесплатно предоставлялся строительный материал для возведения дома и  хозпостроек. Оседлые крестьяне на пять лет освобождались от государственных местных налогов. Для реализации этой задачи из бюджета Союза  и России выделялись долгосрочные ссуды. <br>
• Активная фаза деятельности по переходу кыргызов к осёдлости продолжалась вплоть до 1937 г. Оставшиеся кочевые хозяйства приводились к  осёдлости до 1941 г.  <br>
• Полный переход кыргызского народа к осёдлому образу жизни, несомненно, стал прогрессивным явлением.  В результате этого  в Кыргызстане образовались постоянные аилы и кыштаки, стационарные хозяйственные  центры со своей инфраструктурой, различными просветительными учреждениями, школами, больницами, общественно-бытовыми предприятиями. 

<center><b>Коллективизация сельского хозяйства</b></center>
• Провозглашённая  в  20-е  годы  новая экономическая политика (НЭП)  предпологалась в качестве долголетней стратегии развития СССР. Принципы НЭПа должны были позволить привести крестьян без насилия со  стороны государства, экономическими методами, эволюционным путём  к кооперации. <br> 
• Однако этот курс, сложившийся на гребне НЭП в конце 20-х гг. был подвергнут  коренной  переориентации.  Проводилась  политика  подавления  любой самостоятельности крестьян путем изъятия у них средств  производства и передачи в  ведение государства. <br>
• В  целях  реализации  задачи  коллективизации  И. Сталин летом 1929 г. провозглашает лозунг  о «сплошной коллективизации» сельского хозяйства.  Таким  образом,  для  приобщения  села  к  социалистическому укладу был начат «великий  перелом» 5-января 1930 г. ЦК ВКП (б) приняло  постановление «О темпах коллективизации и государственных мерах по поддержке колхозного  строительства», в котором были намечены даже  сроки проведения коллективизации. <br>
• По программе коллективизации Кыргызстан был  отнесён  к  третьей  группе  районов,  согласно  которой  коллективизация  должна была быть завершена в 1932–1933 гг. <br>
• Коллективизация проводились под непосредственным руководством  сталинского административно-командного аппарата. Местные партийные и  советские органы республики старались определить друг друга в масштабах коллективизации на местах, предпринимали все меры для завершения  её раньше срока. <br>
• В ходе коллективизации в сёлах и аилах Кыргызстана имели место многочисленные злоупотребления и перегибы. При вовлечении крестьян в  коллективные хозяйства полностью нарушались принципы добровольности, повсеместно нарушался принцип постепенности – от простых форм  (ТОЗы, товарищества) к окончательной коллективизации, крестьян насильно сгоняли в колхозы.
                            
              """,
                defaultTextStyle: paragraphTextStyle,
                useRichText: true,
              ),
              Image.asset("assets/images/paragraphs/Stalin.jpg"),
              Text(
                "И. Сталин",
                style: paragraphTextStyle,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 12.0),
              Text(
                "Коллективизация сельского хозяйства в Кыргызстане",
                style: paragraphTextStyle,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 12.0),
              Image.asset("assets/images/paragraphs/collectivization.jpg"),
              Text(
                "Коллективизация по числу крестьянских дворов.",
                style: paragraphTextStyle,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 12.0),
              Image.asset("assets/images/paragraphs/collectivization2.jpg"),
              Text(
                "Коллективизация по посевной площади.",
                style: paragraphTextStyle,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 12.0),
              Html(
                data: """
• Безумная  гонка  коллективизации  сопровождалась  не  только  массовым  раскулачиванием, но и зачастую не обоснованными репрессиями которым подвергали крестьян-середняков, которые отказывались добровольно  вступать в колхозы. <br>
• В 1934 г. 68,5% крестьянских хозяйств Кыргызстана объединились в коллективные хозяйства. В 1937 г. 89%, а в 1940 г. 99% крестьянских хозяйств   входили в колхозы и совхозы.  <br>
• После укрепления колхозов на каждый из них в среднем приходилось по  106 хозяйств, 97% пахотных земель относилось к колхозам и совхозам. Их  обслуживали 53 машино-тракторные  станции, техпарк в которых насчитывалось более 5 тыс. тракторов и 7 тыс комбайнов. Они обрабатывали  85,5% посевной площади. <br>
• Таким образом, процесс коллективизации сельского хозяйства Кыргызстана был завершён до начала Великой Отечественной войны.

<center><b>Состояние промышленности</b></center>
<p>• В годы становления Советской власти Кыргызстан характеризовался как <b>аграрно-животноводческий регион.</b> На начальном этапе политики индустриализации в Кыргызстане имелось лишь незначительное количество  маломощных предприятий, отраслей лёгкой и пищевой промышленности,  несколько небольших хлопкоочистительных заводов. </p>
<p>• НЭП правительства страны предоставила  кустарным предприятиям свободу в производстве продукции и реализации. Это создало благоприятные условия для  развития кустарной промышленности. Если в 1922–1923 в  Кыргызстане было 2 тыс. кустарных предприятия, то в 1925–1926 гг. их  число достигло 4,5 тыс. Вместе с тем, шёл процесс  их кооперирования. </p>
<p>• Однако в общем Кыргызстан продолжал оставаться аграрной страной. В  1926 г. доля промышленного производства составила, по отношению к валовой продукции (ВВП) народного хозяйства республики, всего 2,3%. Следовательно, остальные 97,7% продукции были произведены в полеводстве   и животноводстве. </p>
<p>• Проходивший в декабре 1925 г. XIV съезд ВКП (б), хотя и не ставил в повестку дня специальный вопрос о промышленности СССР, определил курс  на <b>индустриализацию</b> страны. </p>
<p>• В соответствии со всесоюзными планами в Кыргызстане началась работа  по превращению республики в <b>аграрно-индустриальный</b> регион. </p>
<p>• В апреле 1925 г. по почину чехославацских рабочих-коммунистов в Пишпеке было организовано интернациональное кооперативное товарищество  <b>«Интергельпо»</b>. Правительство Кыргызстана около станции Пишпек выделило им 43 га земли. Интергельповцы в кратчайшие сроки построили  и ввели в эксплуатацию кирпичный, лесопильный и кожевенный заводы,  суконную фабрику, электростанцию и ряд мастерских. Этот коллектив  по  мере сил вносил свой вклад в дело развития промышленности республики. </p>
<p>• Советское правительство для развития промышленности Кыргызстана  выделило большие денежные средства, также представлялись долгосрочные  кредиты по линии Госбанка. Это дало возможность построить и ввести в эксплуатацию  ряд важных для народного хозяйства промышленных  объектов. </p>
<p>• <b>В годы первой пятилетки</b> (1928–1932 гг.) были построены и вступили  в эксплуатацию Аламединская гидроэлектростанция и Фрунзенская тепловые электростанции, вступил в строй ряд мелких электростанций – в  Пржевальске, Джалал-Абаде, Уч-Кургане и Токмаке. Значительное развитие получил железнодорожный транспорт. Построены железные дороги:  Фрунзе – Кант, Ош–Кара-Суу, Джалал-Абад – Кок-Янгак, Кувасай – Сулюкта. Началось строительство ветки Уч-Курган – Таш-Кумыр. Всего за  годы первой пятилетки было построено и введено в действие 50 новых  промышленных предприятий, промышленность республики давала продукцию на сумму 79 млн. руб.или в 4,7 раза больше чем в 1925 г. </p>
<p>• <b>Вторая пятилетка</b> (1933–1937 гг.) явилась периодом значительного индустриального прогресса республики. В Кыргызстане было построено 61  крупное предприятие. В 1935 г. вступил в строй каменноугольный рудник  «Таш Кумыр». Интенсивно велось строительство Кадамжайского сурьмяного комбината, Кыргызстан выдвинулся на первое место в союзе по запасам сурьмы, ртути и ряда других редких металлов. Началась добыча нефти  на Чангырташском месторождении. </p>
<p>• Большое развитие получила легкая и пищевая промышленность. Вступили  в строй действуюший Кара-Балтинский сахарный завод, швейная фабрика имени ВЛКСМ, кожзавод, обувная и табачная фабрики во Фрунзе, кирпичный завод в Кызыл-Кие. Начали работать Ново-Павловский и ДжалалАбадский кирпичные заводы. Значительное развитие получили кустарная  промышленность  и промышленность стройматериалов.  </p>
<p>• Построены электростанции для крупных промышленных предприятий, в  том числе Кара-Балтинский сахарзавод, Кара-Суйский хлопкозавод, ТашКумырский угольный рудник и др. В 1937 г. работали 34 электростанции,  24 из которых построены во второй пятилетке. В республике к концу второй  пятилетки  насчитывалось  168  промышленных  предприятий  и  861  предприятие местного значения.  </p>
<p>• Появились новые отрасли индустрии: цветная металлургия, строительная,  электрическая. </p>
<p>• <b>В годы третьей пятилетки</b> (1938–1942 гг.)  было сдано в эксплуатацию 40  промышленных предприятий. В 1940 г. Кыргызстан имел в своем составе,   кроме угольной, ряд новых важных отраслей:  цветную металлообрабатывающую и машиностроительную, а также сеть электростанций, оснащенных новейшей техникой. К 1940 году продукция тяжелой индустрии  составляла 38,7% всего промышленного производства. </p>
<p>• Изменилось соотношение валовой продукции промышленности и сельского хозяйства республики. Удельный вес промышленности с 38% в 1937 г.  повысился до 50,24% в 1940 г. В итоге возрос вклад Кыргызстана в  общесоюзный экономический потенциал, укрепились, стали разностороннее  его хозяйственные связи. • Протяженность благоустроенных автомагистралей к началу 1941 г. достигла 11,5 тыс.км. Кыргызстан к этому времени распологал всеми видами современного транспорта: железнодорожным, воздушным, автомобильным  и речным (Иссык-Куль). </p>
<p>• С развитием промышленности соответственно увеличились ряды рабочего  класса. Однако большинство рабочих-кыргызов были заняты кустарным  производством в сельской местности. Большая часть рабочих Кыргызстана трудилась на угледобывающих предприятиях. Во всех отраслях промышленности ощущался острый недостаток профессиональных рабочих  и инженерно-технических кадров. • В целом промышленность Кыргызстана за годы первой, второй и третьей  пятилеток поднялась на новую ступень и приобрела качественно новое содержание. </p>           
              """,
                defaultTextStyle: paragraphTextStyle,
                useRichText: true,
              )
            ],
          ),
        ),
      ]),
    )));
  }
}