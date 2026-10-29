import 'package:flutter/material.dart';

class Exp2b extends StatelessWidget {
  const Exp2b({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Experiment 2B')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Row, Column and Stack Layouts',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xFF38BDF8),
              ),
            ),
            const SizedBox(height: 20),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Row: Horizontal layout', style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF818CF8))),
                    SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.star, color: Color(0xFFFBBF24), size: 40),
                        Icon(Icons.favorite, color: Color(0xFFF87171), size: 40),
                        Icon(Icons.home, color: Color(0xFF38BDF8), size: 40),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Column: Vertical layout', style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF818CF8))),
                    SizedBox(height: 8),
                    Text('• First item'),
                    Text('• Second item'),
                    Text('• Third item'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Stack: Overlapping widgets', style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF818CF8))),
                    const SizedBox(height: 12),
                    Center(
                      child: SizedBox(
                        height: 130,
                        width: 180,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 110,
                              width: 150,
                              decoration: BoxDecoration(
                                color: const Color(0xFF0284C7),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            Container(
                              height: 70,
                              width: 100,
                              decoration: BoxDecoration(
                                color: const Color(0xFF818CF8),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            const Text(
                              'Stack',
                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            Card(
              color: const Color(0xFF102A24),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: const BorderSide(color: Color(0xFF34D399), width: 1),
              ),
              child: const Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    Icon(Icons.check_circle, color: Color(0xFF34D399), size: 24),
                    SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        'Result: Row, Column and Stack layouts were implemented.',
                        style: TextStyle(color: Color(0xFF34D399), fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
