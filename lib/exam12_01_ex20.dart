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
      home: CinemaHomePage(),
    );
  }
}

class CinemaHomePage extends StatelessWidget {
  final List<Movie> movies = [
    Movie(title: 'Inception', posterUrl: '', rating: 8.8),
    Movie(title: 'Interstellar', posterUrl: '', rating: 8.6),
    Movie(title: 'The Dark Knight', posterUrl: '', rating: 9.0),
    // Прежде чем дабовать путь к картинке добавте ее в pubspec.yaml:
    // flutter:
    //  assets:
    //    - путь
    // после сохранить pubspec.yaml
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cinema Home'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Добавьте действие для поиска
            },
          )
        ],
      ),
      body: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (context, index) {
          return ListTile(
            //leading: Image.asset(movies[index].posterUrl,
            //width: 50, height: 100, fit: BoxFit.cover),
            title: Text(movies[index].title),
            subtitle: Text('Rating: ${movies[index].rating}'),
          );
        },
      ),
    );
  }
}

class Movie {
  final String title;
  final String posterUrl;
  final double rating;

  Movie({required this.title, required this.posterUrl, required this.rating});
}
