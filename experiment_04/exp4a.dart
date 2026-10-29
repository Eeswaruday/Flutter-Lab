import 'package:flutter/material.dart';

class Exp4a extends StatelessWidget {
  const Exp4a({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Experiment 4A'),
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
                      const Icon(Icons.navigation, size: 48, color: Color(0xFF38BDF8)),
                      const SizedBox(height: 16),
                      const Text(
                        'Explicit Navigation Push',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF38BDF8),
                        ),
                      ),
                      const Divider(height: 24, color: Color(0xFF334155)),
                      const Text(
                        'Demonstrates MaterialPageRoute push & pop.',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Color(0xFF94A3B8)),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton.icon(
                        icon: const Icon(Icons.arrow_forward),
                        label: const Text('Open Second Screen'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const SecondScreen(),
                            ),
                          );
                        },
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

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    children: [
                      const Icon(Icons.check_circle_outline, size: 48, color: Color(0xFF34D399)),
                      const SizedBox(height: 16),
                      const Text(
                        'Explicit Navigator Push/Pop',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFFF8FAFC)),
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        'Navigated via MaterialPageRoute.',
                        style: TextStyle(color: Color(0xFF94A3B8)),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton.icon(
                        icon: const Icon(Icons.arrow_back),
                        label: const Text('Go Back'),
                        onPressed: () => Navigator.pop(context),
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
