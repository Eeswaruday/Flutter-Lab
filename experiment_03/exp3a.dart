import 'package:flutter/material.dart';

class Exp3a extends StatelessWidget {
  const Exp3a({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Experiment 3A'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final wide = constraints.maxWidth >= 600;

          return Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'LayoutBuilder Responsiveness',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xFF38BDF8)),
                ),
                const SizedBox(height: 8),
                Text(
                  'Current layout mode: ${wide ? "Wide (Horizontal)" : "Narrow (Vertical)"}',
                  style: const TextStyle(color: Color(0xFF94A3B8)),
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: Flex(
                    direction: wide ? Axis.horizontal : Axis.vertical,
                    children: [
                      Expanded(
                        child: Container(
                          height: 140,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: const Color(0xFF1E293B),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: const Color(0xFF38BDF8), width: 1.5),
                          ),
                          child: const Text(
                            'Section A',
                            style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF38BDF8), fontSize: 18),
                          ),
                        ),
                      ),
                      const SizedBox(width: 12, height: 12),
                      Expanded(
                        child: Container(
                          height: 140,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: const Color(0xFF1E293B),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: const Color(0xFF818CF8), width: 1.5),
                          ),
                          child: const Text(
                            'Section B',
                            style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF818CF8), fontSize: 18),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
