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
      home: ScalePage(),
    );
  }
}

class ScalePage extends StatefulWidget {
  @override
  ScalePageState createState() => ScalePageState();
}

class ScalePageState extends State<ScalePage> {
  double _size = 100.0; // Initial size of the square

  void increaseSize() {
    setState(() {
      _size += 10; // Increase size by 10
    });
  }

  void decreaseSize() {
    setState(() {
      if (_size > 10) {
        _size -= 10; // Decrease size by 10, minimum size is 10
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: _size,
              height: _size,
              color: Colors.blue,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FloatingActionButton(
                    onPressed: increaseSize,
                    tooltip: 'Increase Size',
                    child: const Icon(Icons.add),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FloatingActionButton(
                    onPressed: decreaseSize,
                    tooltip: 'Decrease Size',
                    child: const Icon(Icons.remove),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
