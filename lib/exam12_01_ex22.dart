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
      home: AddDevicePage(),
    );
  }
}

class AddDevicePage extends StatefulWidget {
  @override
  AddDevicePageState createState() => AddDevicePageState();
}

class AddDevicePageState extends State<AddDevicePage> {
  final TextEditingController titleController = TextEditingController();
  String deviceType = 'Light';

  List<String> deviceTypes = [
    'Light',
    'Thermostat',
    'Security Camera',
    'Door Lock',
  ];

  void addDevice() {
    final String title = titleController.text;
    if (title.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Please enter a device name'),
      ));
      return;
    }
    print('Adding Device: $title as $deviceType');
    // Here, you could add logic to actually save the device in a database
    titleController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Device'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextField(
              controller: titleController,
              decoration: const InputDecoration(
                labelText: 'Device Name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            DropdownButtonFormField<String>(
              value: deviceType,
              decoration: const InputDecoration(
                labelText: 'Device Type',
                border: OutlineInputBorder(),
              ),
              onChanged: (String? newValue) {
                setState(() {
                  deviceType = newValue!;
                });
              },
              items: deviceTypes.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: addDevice,
                child: const Text('Add Device'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
