import 'package:flutter/material.dart';

//пример реализации bottomBar, в котором будет 3 пункта. Каждый подпункт будет задавать новый цвет фона


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  List<Color> _colors = [Colors.blue, Color.fromARGB(255, 36, 5, 237), Color.fromARGB(255, 208, 220, 226)];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Пример ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Bottom Navigation Bar пример '),
        ),
        body: Container(
          color: _colors[_selectedIndex],
          child: Center(
            child: Text('Цвет фона изменяется для каждого пункта Bottom Bar'),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Главная',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Поиск',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Профиль',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}