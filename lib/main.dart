import 'package:flutter/material.dart';

void main() {
  runApp(const SolveoApp());
}

class SolveoApp extends StatelessWidget {
  const SolveoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Solveo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Solveo - Déclic Math'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Bienvenue sur Solveo !',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
