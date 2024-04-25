import 'package:flutter/material.dart';

//дизайн экрана авторизации пользователя в системе, для примера данные выводятся на консоль 

class AuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Экран авторизации',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Авторизация'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: AuthForm(),
        ),
      ),
    );
  }
}

class AuthForm extends StatefulWidget {
  @override
  _AuthFormState createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  final TextEditingController _loginController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        TextField(
          controller: _loginController,
          decoration: InputDecoration(labelText: 'Логин'),
        ),
        SizedBox(height: 16.0),
        TextField(
          controller: _passwordController,
          decoration: InputDecoration(labelText: 'Пароль'),
          obscureText: true,
        ),
        SizedBox(height: 32.0),
        ElevatedButton(
          onPressed: () {
            // Здесь можно добавить логику для авторизации
            String login = _loginController.text;
            String password = _passwordController.text;
            print('Логин: $login, Пароль: $password');
          },
          child: Text('Войти'),
        ),
      ],
    );
  }
}