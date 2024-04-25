import 'package:flutter/material.dart';

//пример кода на Flutter, демонстрирующий переход между двумя экранами и передачу данных

class ex1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Первый экран'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SecondScreen(data: 'Данные из первого экрана'),
              ),
            );
          },
          child: Text('Перейти ко второму экрану'),
        ),
      ),
    );
  }
}


class SecondScreen extends StatelessWidget {
  final String data;

  SecondScreen({required this.data}); // Конструктор для приема данных

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Второй экран'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Данные с первого экрана: $data'),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Возврат на предыдущий экран
              },
              child: Text('Назад к первому экрану'),
            ),
          ],
        ),
      ),
    );
  }
}
