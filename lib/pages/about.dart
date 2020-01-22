import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:historybook/style.dart';

class About extends StatelessWidget {
  Widget ContactBox(String _developer, String _email) {
    return Container(
      width: 250.0,
      height: 70.0,
      margin: EdgeInsets.all(5.0),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            color: Colors.black.withOpacity(0.5),
            blurRadius: 3.5,
            offset: Offset(1.5, 1.5))
      ]),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(_developer,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            )),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Icon(
            Icons.email,
            color: Color.fromRGBO(80, 88, 97, 1),
            size: 17.0,
          ),
          Text(_email)
        ]),
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('О Приложении')),
        body: SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Html(
                      data: """
Добро пожаловать в приложение по истории Кыргызстана!
<p>Данное приложение является электронным вариантом книги О.Дж.Осмонова, все параграфы из книги были перенесены в это приложение, надеемся, в удобном для вас формате. </p>  
<p><b>Чем такой формат удобнее чем нормальная книга или PDF-файл?</b></p>
<p>• В нашем приложении вы можете удобно переключаться из параграфа в параграф, они все разделены, чтобы перейти из одного параграфа в другой, достаточно выйти из страницы с параграфом, и переключиться на другой нажатием на картинку с номером и названием параграфа, чего вы не сможете сделать в PDF. В нём вам придется скроллить до нужной вам страницы </p>
<p>• Наше приложение не занимает место в вашей портфели (скорее всего), но, к сожалению придется пожертвовать "немного" места на смартфоне. За то не придется тащить с собой тяжелую книгу и видеть в коридорах листки с вашей фамилией, где написано о том, что вы не сдали книгу в библиотеку.</p>  
<p>• Приложение также имеет отдельную страницу с историческими личностями, что тоже может быть удобным для нахождения информации о какой-либо конкретной исторической личности</p>  
<p>• Также наш продукт включает в себя тестирование по параграфам, благодаря этому вы сможете проверить свои знания.</p>  

<p><b>Обновления</b></p>
<p>Приложение будет обновляться после исправления найденных вами багов или после добавления новых функций. Однако, после обновления приложение придется скачивать заново, так как приложение не будет зарегистрировано в Play Market.</p>

<p><b>Есть предложения или нашли баг?</b></p>
<p>Если у вас есть предложения или вам пришлось встретиться лицом к лицу с багом, или с багами - обращайтесь к разработчикам, мы постараемся исправить.</p>
                """,
                      defaultTextStyle: paragraphTextStyle,
                      useRichText: true,
                    ),
                    ContactBox('Байчик', '  zhumabek_uulu_b@iuca.kg'),
                    ContactBox('Азим', '  akmatov_az@iuca.kg'),
                    ContactBox('Тима', '  dzholdoshbekov_t@iuca.kg'),
                    Html(
                      data: """
<center>Приложение разработано по заказу <b>Марат агая</b>.</center>
<center>Спасибо за то, что пользуетесь нашим приложением! </center>
<center>© BAT Inc. 2020</center>          
              """,
                      defaultTextStyle: paragraphTextStyle,
                      useRichText: true,
                    )
                  ],
                ))));
  }
}
