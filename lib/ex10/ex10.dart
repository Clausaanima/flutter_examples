import 'package:flutter/material.dart';

//пример реализации диалогового окна и 2 всплывающих уведомлений разной длительности, работающих по нажатию на кнопку

class NotificationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Уведомления',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NotificationScreen(),
    );
  }
}

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Уведомления'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showAlertDialog(context);
            showShortSnackbar(context);
            showLongSnackbar(context);
          },
          child: Text('Показать уведомления'),
        ),
      ),
    );
  }

  void showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Диалоговое окно'),
          content: Text('Это диалоговое окно!'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Закрыть'),
            ),
          ],
        );
      },
    );
  }

  void showShortSnackbar(BuildContext context) {
    final snackBar = SnackBar(
      content: Text('Короткое уведомление'),
      duration: Duration(seconds: 5),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void showLongSnackbar(BuildContext context) {
    final snackBar = SnackBar(
      content: Text('Длинное уведомление. Оно пропадет через 10 секунд.'),
      duration: Duration(seconds: 10),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}