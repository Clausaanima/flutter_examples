import 'package:flutter/material.dart';

//пример дизайна экрана регистрации пользователя в приложении Flutter - данные будут выводиться на консоль 

class RegistrationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Экран регистрации',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Регистрация'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: RegistrationForm(),
        ),
      ),
    );
  }
}

class RegistrationForm extends StatefulWidget {
  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        TextField(
          controller: _nameController,
          decoration: InputDecoration(labelText: 'Имя пользователя'),
        ),
        SizedBox(height: 16.0),
        TextField(
          controller: _emailController,
          decoration: InputDecoration(labelText: 'Электронная почта'),
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
            // Здесь можно добавить логику для регистрации
            String name = _nameController.text;
            String email = _emailController.text;
            String password = _passwordController.text;
            print('Имя: $name, Email: $email, Пароль: $password');
          },
          child: Text('Зарегистрироваться'),
        ),
      ],
    );
  }
}