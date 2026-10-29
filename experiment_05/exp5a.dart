import 'package:flutter/material.dart';

class Exp5a extends StatefulWidget {
  const Exp5a({super.key});

  @override
  State<Exp5a> createState() => _Exp5aState();
}

class _Exp5aState extends State<Exp5a> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Experiment 5A'),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    children: [
                      const Text(
                        'StatefulWidget Local Counter',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF38BDF8)),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        '$count',
                        style: const TextStyle(fontSize: 54, color: Color(0xFF38BDF8), fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton.icon(
                        icon: const Icon(Icons.add),
                        label: const Text('Increment Counter'),
                        onPressed: () => setState(() => count++),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
