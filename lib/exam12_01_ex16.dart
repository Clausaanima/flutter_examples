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
      home: exam12_01_ex16(),
    );
  }
}

class exam12_01_ex16 extends StatefulWidget {
  @override
  exam12_01_ex16State createState() => exam12_01_ex16State();
}

class exam12_01_ex16State extends State<exam12_01_ex16> {
  final formKey = GlobalKey<FormState>();
  String question = '';
  List<String> options = ['', '', '', ''];

  void addQuestion() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      // Показывает добавление вопроса в конселе
      print('Question Added: $question');
      print('Options: $options');
      // Очищает TextFields
      formKey.currentState!.reset();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add a New Question"),
      ),
      body: Form(
        key: formKey,
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Enter your question',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              onSaved: (value) {
                question = value ?? '';
              },
            ),
            const SizedBox(height: 20),
            ...List.generate(
                4,
                (index) => Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Option ${index + 1}',
                          border: const OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter an option';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          options[index] = value ?? '';
                        },
                      ),
                    )),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: addQuestion,
              child: const Text('Add Question'),
            ),
          ],
        ),
      ),
    );
  }
}
