import 'package:flutter/material.dart';

//дизайн простого калькулятора, без математических операций

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Простой калькулятор',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Calculator(),
    );
  }
}

class Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Простой калькулятор'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CalculatorButton(buttonText: '7'),
                CalculatorButton(buttonText: '8'),
                CalculatorButton(buttonText: '9'),
                CalculatorButton(buttonText: '+'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CalculatorButton(buttonText: '4'),
                CalculatorButton(buttonText: '5'),
                CalculatorButton(buttonText: '6'),
                CalculatorButton(buttonText: '-'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CalculatorButton(buttonText: '1'),
                CalculatorButton(buttonText: '2'),
                CalculatorButton(buttonText: '3'),
                CalculatorButton(buttonText: 'x'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CalculatorButton(buttonText: 'C'),
                CalculatorButton(buttonText: '0'),
                CalculatorButton(buttonText: '='),
                CalculatorButton(buttonText: '/'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CalculatorButton extends StatelessWidget {
  final String buttonText;

  CalculatorButton({required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Text(
        buttonText,
        style: TextStyle(
          fontSize: 24.0,
        ),
      ),
    );
  }
}