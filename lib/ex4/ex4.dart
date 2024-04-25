import 'package:flutter/material.dart';

//пример реализации вывода информации на экран приложения из массива с использованием ListView

class MyApp extends StatelessWidget {
  final List<String> data = ['Элемент 1', 'Элемент 2', 'Элемент 3', 'Элемент 4', 'Элемент 5'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Информация из массива'),
        ),
        body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(data[index]),
            );
          },
        ),
      ),
    );
  }
}