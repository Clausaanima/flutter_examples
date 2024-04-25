import 'package:flutter/material.dart';

//пример реализации дизайна экрана списка товаров магазина косметики

class CosmeticsListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Магазин косметики',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Косметика'),
        ),
        body: CosmeticsList(),
      ),
    );
  }
}

class CosmeticsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cosmeticsData.length,
      itemBuilder: (context, index) {
        return Card(
          margin: EdgeInsets.all(8.0),
          child: ListTile(
            leading: Image.asset(cosmeticsData[index].image),
            title: Text(cosmeticsData[index].name),
            subtitle: Text(cosmeticsData[index].description),
            trailing: Text('\$' + cosmeticsData[index].price.toString()),
            onTap: () {
              // дополнительные действие при нажатии на элемент списка
              print('Выбран товар: ${cosmeticsData[index].name}');//информация выводится на консоль
            },
          ),
        );
      },
    );
  }
}

class Cosmetic {
  final String name;
  final String image;
  final String description;
  final double price;

  Cosmetic({required this.name, required this.image, required this.description, required this.price});
}

final List<Cosmetic> cosmeticsData = [
  Cosmetic(
    name: 'Набор для макияжа глаз',
    image: 'assets/eye_makeup.jpg',//добавить свое изображение и не забыть добавить путь к изображение в pupspec.yaml и в папку assets в корне проекта - папку нужно создать самостоятельно 
    description: 'Превратите ваши глаза в произведение исскуства',
    price: 25.99,
  ),
  Cosmetic(
    name: 'Помада на основе натуральных ингредиентов',
    image: 'assets/lipstick.jpg',//добавить свое изображение и не забыть добавить путь к изображение в pupspec.yaml и в папку assets в корне проекта - папку нужно создать самостоятельно 
    description: 'Идеальный выбор для увлажнения и питания губ',
    price: 15.99,
  ),
  Cosmetic(
    name: 'Крем для лица с коллагеном',
    image: 'assets/face_cream.jpg',//добавить свое изображение и не забыть добавить путь к изображение в pupspec.yaml и в папку assets в корне проекта - папку нужно создать самостоятельно 
    description: 'Обеспечивает увлажнение и помогает сохранить упругость кожи',
    price: 19.99,
  ),
];