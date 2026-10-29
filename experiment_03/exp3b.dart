import 'package:flutter/material.dart';

class Exp3b extends StatelessWidget {
  const Exp3b({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final device = size.width < 600
        ? 'Mobile'
        : size.width < 900
            ? 'Tablet'
            : 'Desktop';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Experiment 3B'),
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
                      const Icon(Icons.aspect_ratio, size: 48, color: Color(0xFF38BDF8)),
                      const SizedBox(height: 16),
                      const Text(
                        'MediaQuery & Breakpoints',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF38BDF8),
                        ),
                      ),
                      const Divider(height: 24, color: Color(0xFF334155)),
                      Text(
                        'Width: ${size.width.toStringAsFixed(0)} pixels',
                        style: const TextStyle(fontSize: 16, color: Color(0xFFF8FAFC)),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        'Height: ${size.height.toStringAsFixed(0)} pixels',
                        style: const TextStyle(fontSize: 16, color: Color(0xFFF8FAFC)),
                      ),
                      const SizedBox(height: 16),
                      Chip(
                        avatar: const Icon(Icons.devices, size: 18, color: Color(0xFF0F172A)),
                        label: Text(
                          'Device category: $device',
                          style: const TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF0F172A)),
                        ),
                        backgroundColor: const Color(0xFF38BDF8),
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
