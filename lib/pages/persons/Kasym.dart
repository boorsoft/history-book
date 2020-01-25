import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:historybook/style.dart';

class Kasym extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Касым Тыныстанов"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
          children: <Widget>[
            Html(
              data:
              """
<center><b>Касым Тыныстанов</b></center>
<p>
Созвездие ярких личностей, заложивших после революции основу нашей государственности, было бы неполным без фигуры Касыма Тыныстанова. Родившись в 1901 году, он прожил всего лишь 37 лет. В таком же возрасте ушел из жизни А. С. Пушкин.
Природа в отношении К. Тыныстанова не поскупилась — ему были щедро отпущены богатые и разносторонние дарования. Ка­сым был поэтом, драматургом, прозаиком, лингвистом, литерату­роведом, фольклористом, педагогом; наконец, он — видный госу­дарственный деятель своего времени. Стоять у истоков новых на­чинаний в эпоху обновления национального сознания, в период национального возрождения, по-видимому, самою судьбою было суждено таким личностям, изначально наделенным универсаль­ной талантливостью.
А это действительно был период национального возрождения.
Ибо разве это не национальное возрождение, когда почти по­головно безграмотный народ вдруг начинает осваивать — от мала до велика — азы грамотности! Разве это не национальное возрож­дение, когда безудержный энтузиазм — стремление к образова­нию — охватывает буквально весь народ, который как бы спешит вырваться из вековой тьмы к свету, к новому миру!
Именно на таком историческом этапе в судьбе кыргызского народа Касым Тыныстанов не просто становится во главе всей просветительской деятельности республики, но и непосредствен­но участвует в разработке и написании первых оригинальных учебников. Первый Народный комиссар просвещения Киргиз­ской АССР Касым Тыныстанов — в 26 лет — ведет особо важную государственную и общественную работу, одновременно продол­жая трудиться над созданием учебников, которые, как утверждают ведущие современные языковеды, по уровню, содержанию и на­учной аргументированности сохранили свою первозданную цен­ность и в наши дни.
К. Тыныстанов одним из первых поставил вопрос о переходе с арабского на латинский алфавит, опубликовав статью «Почему мы тяготеем к латинскому алфавиту?». В этой статье ученый отмечал, что «цель принятия «латиницы» не в том, чтобы уничтожить бело-чалмовых ходж-мулл Востока, а в том, чтобы более органичным пу­тем создать свою литературу и культуру». Ясно понимая, что введе­ние нового алфавита — далеко не легкое дело, он создает «Общест­во друзей нового алфавита». В 1925 году на научно-педагогическом съезде в Бишкеке концепция Касыма Тыныстанова была одобрена.
Важным свидетельством его научного авторитета в среде тюркологов является тот факт, что он был назначен одним из основных докладчиков на Все­союзной тюркологической конференции, проходившей в 1926 году в Баку и посвящен­ной проблеме формирования новой письменности.
Как говорится, «дорога в дальний путь начинается с первого шага»: провести кыр­гызский язык по целинной поч­ве национальной культуры бы­ло делом, требующим подлин­ного научного мужества. Касым Тыныстанов создал для школы «Книгу для чтения» («Эне тил»). В предисловии он писал: «По­словица гласит: не говори обо всем, скажи об одном! Так и мы писали эту книгу не от переиз­бытка знаний, но в силу необ­ходимости».


</p>
              """,
            defaultTextStyle: paragraphTextStyle,
            useRichText: true,
            ),
          ],
        ),
      ),
      )
    );
  }
}