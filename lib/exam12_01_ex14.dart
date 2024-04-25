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
      home: exam12_01_ex14(),
    );
  }
}

class exam12_01_ex14 extends StatefulWidget {
  @override
  exam12_01_ex14State createState() => exam12_01_ex14State();
}

class exam12_01_ex14State extends State<exam12_01_ex14> {
  int currentQuestionIndex = 0;
  final List<Question> questions = [
    Question("1 Question", ["A", "B", "C", "D"], "2 Question"),
    Question("2 Question", ["A", "B", "C", "D"], "2 Question"),
    // Добавьте больше вопросов по желанию
  ];

  void _nextQuestion() {
    setState(() {
      if (currentQuestionIndex != questions.length) {
        currentQuestionIndex = (currentQuestionIndex + 1) % questions.length;
      } else {
        null;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              questions[currentQuestionIndex].questionText,
              style:
                  const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: questions[currentQuestionIndex].options.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(questions[currentQuestionIndex].options[index]),
                  leading: Radio(
                    value: questions[currentQuestionIndex].options[index],
                    groupValue: questions[currentQuestionIndex].answer,
                    onChanged: (value) {
                      setState(() {
                        questions[currentQuestionIndex].answer = value!;
                      });
                    },
                  ),
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: _nextQuestion,
            child: const Text("Next Question"),
          )
        ],
      ),
    );
  }
}

class Question {
  String questionText;
  List<String> options;
  String answer;

  Question(this.questionText, this.options, this.answer);
}
