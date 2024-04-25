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
      home: SettingsPage(),
    );
  }
}

class SettingsPage extends StatefulWidget {
  @override
  SettingsPageState createState() => SettingsPageState();
}

class SettingsPageState extends State<SettingsPage> {
  bool lightsOn = false;
  double temperature = 20.0;
  bool securityEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Settings'),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: <Widget>[
          SwitchListTile(
            title: const Text('Lights'),
            subtitle: Text(lightsOn ? 'On' : 'Off'),
            value: lightsOn,
            onChanged: (bool value) {
              setState(() {
                lightsOn = value;
              });
            },
          ),
          ListTile(
            title: const Text('Temperature'),
            subtitle: Slider(
              min: 10.0,
              max: 30.0,
              divisions: 20,
              label: '${temperature.round()}°C',
              value: temperature,
              onChanged: (double value) {
                setState(() {
                  temperature = value;
                });
              },
            ),
          ),
          SwitchListTile(
            title: const Text('Security System'),
            subtitle: Text(securityEnabled ? 'Enabled' : 'Disabled'),
            value: securityEnabled,
            onChanged: (bool value) {
              setState(() {
                securityEnabled = value;
              });
            },
          ),
        ],
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
