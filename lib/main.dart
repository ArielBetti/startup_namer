import 'package:flutter/material.dart';
import 'package:startup_namer/widgets/random_words.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Statup name generator',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Statup name generator'),
        ),
        body: const Center(
          child: RandomWords(),
        ),
      ),
    );
  }
}
