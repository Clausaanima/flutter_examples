import 'package:flutter/material.dart';

//пример реализации дизайна экрана товара магазина одежды

class ClothingItemScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Подробная информация о товаре ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Одежда'),
        ),
        body: ClothingItemDetails(),
      ),
    );
  }
}

class ClothingItemDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Image.asset('assets/clothing_image.jpg', fit: BoxFit.cover),//добавить свое изображение и не забыть добавить путь к изображение в pupspec.yaml и в папку assets в корне проекта - папку нужно создать самостоятельно 
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Стильная футболка',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8.0),
              Text(
                'Описание: комфорт и высокое качество в одной футболке',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 8.0),
              Text(
                'Цена: \$30',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.green),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  //можно добавить дополнительную логику при нажатии на кнопку  
                  print('Товар добавлен в корзину');// информация о добавлении товара в корзину выводится на консоль 
                },
                child: Text('Добавить в корзину'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}