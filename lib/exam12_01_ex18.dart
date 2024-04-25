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
      home: NewNotePage(),
    );
  }
}

class NewNotePage extends StatefulWidget {
  @override
  NewNotePageState createState() => NewNotePageState();
}

class NewNotePageState extends State<NewNotePage> {
  final TextEditingController controllerNoted = TextEditingController();

  void _saveNote() {
    final text = controllerNoted.text;
    // Выводит сохраненную заметку в терминал
    print('Saving note: $text');
    // Очищает TextField
    controllerNoted.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: controllerNoted,
              decoration: const InputDecoration(
                hintText: 'Enter your note here',
              ),
              // Перевод строк пр  не хватки места
              maxLines: null,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _saveNote,
              child: const Text('Save Note'),
            ),
          ],
        ),
      ),
    );
  }
}
