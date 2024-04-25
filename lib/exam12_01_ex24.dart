import 'package:flutter/material.dart';
import 'dart:async';

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
      home: CountdownTimerPage(),
    );
  }
}

class CountdownTimerPage extends StatefulWidget {
  @override
  CountdownTimerPageState createState() => CountdownTimerPageState();
}

class CountdownTimerPageState extends State<CountdownTimerPage> {
  Duration duration = const Duration();
  Timer? timer;

  void startTimer() {
    // Cancel any existing timers
    timer?.cancel();
    timer = Timer.periodic(const Duration(seconds: 1), (_) => addTime());
  }

  void addTime() {
    final addSeconds = -1;
    setState(() {
      final seconds = duration.inSeconds + addSeconds;
      if (seconds < 0) {
        timer?.cancel();
      } else {
        duration = Duration(seconds: seconds);
      }
    });
  }

  void resetTimer() {
    setState(() {
      duration = const Duration();
      timer?.cancel();
    });
  }

  void setTimer() {
    setState(() {
      // Set timer for 1 minute
      duration = const Duration(minutes: 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Countdown Timer'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '${duration.inMinutes}:${(duration.inSeconds % 60).toString().padLeft(2, '0')}',
              style: const TextStyle(fontSize: 48),
            ),
            const SizedBox(height: 80),
            ElevatedButton(
              onPressed: startTimer,
              child: const Text('Start Timer'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: resetTimer,
              child: const Text('Reset Timer'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: setTimer,
              child: const Text('Set Timer to 1 Minute'),
            ),
          ],
        ),
      ),
    );
  }
}
