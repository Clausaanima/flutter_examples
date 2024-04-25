import 'package:flutter/material.dart';

//пример простого календаря для апреля 2024 года

class CalendarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Календарь',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Календарь - Апрель 2024'),
        ),
        body: CalendarView(),
      ),
    );
  }
}

class CalendarView extends StatelessWidget {
  final List<String> _daysInWeek = ['Пн', 'Вт', 'Ср', 'Чт', 'Пт', 'Сб', 'Вс'];
  final List<List<int>> _calendarDates = [
    [28, 29, 30, 31, 1, 2, 3],
    [4, 5, 6, 7, 8, 9, 10],
    [11, 12, 13, 14, 15, 16, 17],
    [18, 19, 20, 21, 22, 23, 24],
    [25, 26, 27, 28, 29, 30, 1]
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: _daysInWeek
              .map((day) => Text(
                    day,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ))
              .toList(),
        ),
        ..._calendarDates.map((week) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: week
                .map((date) => Text(
                      date.toString(),
                      style: TextStyle(color: date == 1 ? Colors.black : Colors.grey),
                    ))
                .toList(),
          );
        }).toList(),
      ],
    );
  }
}