import 'package:flutter/material.dart';

//пример реализации дизайна экрана с подробной информацией о товаре магазина спортивной обуви в приложении - данные о добавлении товара в корзину выводятся на консоль 

class ProductDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Детали товара',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Спортивная обувь'),
        ),
        body: ProductDetails(),
      ),
    );
  }
}

class ProductDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset('assets/images/sports_shoes.jpg'),//добавить свое изображение и не забыть добавить путь к изображение в pupspec.yaml и в папку assets в корне проекта - папку нужно создать самостоятельно 
          SizedBox(height: 16.0),
          Text(
            'Nike Air Zoom Pegasus 38',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8.0),
          Text(
            'Отличная спортивная обувь от Nike для бега и тренировок.',
            style: TextStyle(fontSize: 16.0),
          ),
          SizedBox(height: 8.0),
          Text(
            'Цена: \$120',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.green),
          ),
          SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {
              // Действие по добавлению товара в корзину
              print('Товар добавлен в корзину');
            },
            child: Text('Добавить в корзину'),
          ),
        ],
      ),
    );
  }
}