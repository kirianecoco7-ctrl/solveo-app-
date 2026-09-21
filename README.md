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
        primarySwatch: Colors.teal,
        scaffoldBackgroundColor: const Color(0xFFAFAFAF),
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
        title: const Text('SOLVEO - Le déclic mathématique'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Bienvenue ! Mets toutes les chances de ton côté.',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            
            // Carte pour le Premier Cycle
            _buildCycleCard(
              context,
              title: 'Premier Cycle (6e à la 3e)',
              subtitle: 'Bases, méthodes & Sujets BEPC',
              color: Colors.orange,
              icon: Icons.school,
            ),
            
            const SizedBox(height: 15),
            
            // Carte pour le Second Cycle
            _buildCycleCard(
              context,
              title: 'Second Cycle (2nde à la Terminale)',
              subtitle: 'Situations complexes & Sujets BAC',
              color: Colors.teal,
              icon: Icons.menu_book,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCycleCard(
    BuildContext context, {
    required String title,
    required String subtitle,
    required Color color,
    required IconData icon,
  }) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        leading: CircleAvatar(
          backgroundColor: color,
          radius: 25,
          child: Icon(icon, color: Colors.white, size: 28),
        ),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () {
          // Action lors du clic (ouverture des chapitres)
        },
      ),
    );
  }
}
