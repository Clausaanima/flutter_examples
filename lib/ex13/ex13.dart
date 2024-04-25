import 'package:flutter/material.dart';

//пример реализации дизайна экрана настройки личного кабинета пользователя в социальной сети 

class SocialNetworkSettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Настройки Личного Кабинета',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Настройки Личного Кабинета'),
        ),
        body: SocialNetworkSettings(),
      ),
    );
  }
}

class SocialNetworkSettings extends StatefulWidget {
  @override
  _SocialNetworkSettingsState createState() => _SocialNetworkSettingsState();
}

class _SocialNetworkSettingsState extends State<SocialNetworkSettings> {
  bool _notificationEnabled = true;
  String _username = 'user123';
  String _email = 'user123@example.com';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Общие настройки',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
          ),
          SwitchListTile(
            title: Text('Уведомления'),
            value: _notificationEnabled,
            onChanged: (value) {
              setState(() {
                _notificationEnabled = value;
              });
            },
          ),
          SizedBox(height: 16.0),
          Text(
            'Личная информация',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
          ),
          TextFormField(
            initialValue: _username,
            decoration: InputDecoration(labelText: 'Имя пользователя'),
            onChanged: (value) {
              _username = value;
            },
          ),
          SizedBox(height: 8.0),
          TextFormField(
            initialValue: _email,
            decoration: InputDecoration(labelText: 'Email'),
            onChanged: (value) {
              _email = value;
            },
          ),
          SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {
              // Сохранение изменений, так же можно добавить дополнительные функции при нажатии 
              print('Изменения сохранены');//выводится на консоль 
            },
            child: Text('Сохранить'),
          ),
        ],
      ),
    );
  }
}