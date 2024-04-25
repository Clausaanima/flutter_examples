import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: exam12_01_ex17(),
    );
  }
}

class exam12_01_ex17 extends StatelessWidget {
  final Flower flower = Flower(
    name: "Red Roses",
    description: "A bouquet of fresh red roses, perfect for your loved ones.",
    price: 49.99,
    imageUrl:
        "assets/red_roses.jpg", // Прежде чем дабовать путь к картинке добавте ее в pubspec.yaml:
    // flutter:
    //  assets:
    //    - путь
    // после сохранить pubspec.yaml
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(flower.imageUrl, fit: BoxFit.cover),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                flower.description,
                style: const TextStyle(fontSize: 16.0, height: 1.5),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                flower.price.toStringAsFixed(2),
                style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.green[800]),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.green[800],
                  onPrimary: Colors.white,
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                ),
                child: const Text("Add to Cart"),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Flower {
  final String name;
  final String description;
  final double price;
  final String imageUrl;

  Flower(
      {required this.name,
      required this.description,
      required this.price,
      required this.imageUrl});
}
