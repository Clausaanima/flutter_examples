import 'package:flutter/material.dart';

//пример реализации вывода 5 изображений на экран. Изображения хранятся в папке с проектом. Список должен пролистываться.


//изображения данные в примере заменить собственными
//поместить  изображения в папку assets/images внутри каталога вашего проекта Flutter
//добавитьпуть к изображениям в pubspec.yaml
// flutter:
//  assets:
//    - assets/images/image1.jpg
//    - assets/images/image2.jpg
//    - assets/images/image3.jpg
//    - assets/images/image4.jpg
//    - assets/images/image5.jpg
// 
//после добавления изменений в pubspec.yaml - сохранить изменения

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image Gallery',
      home: ImageGallery(),
    );
  }
}

class ImageGallery extends StatelessWidget { ///добавить свои изображения и не забыть добавить пути к изображениям в pupspec.yaml и в папку assets в корне проекта - папку нужно создать самостоятельно 
  final List<String> imagePaths = [
    'assets/images/image1.jpg',
    'assets/images/image2.jpg',
    'assets/images/image3.jpg',
    'assets/images/image4.jpg',
    'assets/images/image5.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Галерея'),
      ),
      body: ListView.builder(
        itemCount: imagePaths.length,
        itemBuilder: (context, index) {
          return Image.asset(
            imagePaths[index],
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}