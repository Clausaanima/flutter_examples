import 'package:flutter/material.dart';
import 'package:flutter_examples/ex1/ex1.dart';//в зависимости от проекта задания поменять путь к файлу с классом


//это файл отвечающий за запуск приложения, в нем кроме пути к файлу(классу) юольше ничего менять не надо 
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Передача данных между экранами',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ex1Page(),//указать нужный класс для перехода в проект с заданием , название класса вы найдете в соответстующей папке и файле в ней (все подписано)
    );
  }
}