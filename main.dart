import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Exp1a(),
    );
  }
}

class Exp1a extends StatelessWidget {
  const Exp1a({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(
        title: const Text(
          'Experiment 1A',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
      ),

      body: const Padding(
        padding: EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Flutter and Dart SDK',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),

            SizedBox(height: 24),

            Divider(
              color: Colors.white24,
              thickness: 1,
            ),

            SizedBox(height: 20),

            Text(
              'AIM',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),

            SizedBox(height: 8),

            Text(
              'To understand Flutter and Dart SDK.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white70,
                height: 1.5,
              ),
            ),

            SizedBox(height: 24),

            Text(
              'THEORY',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),

            SizedBox(height: 12),

            Text(
              'Flutter is a framework for building user interfaces.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white70,
                height: 1.5,
              ),
            ),

            SizedBox(height: 12),

            Text(
              'Dart is the programming language used by Flutter.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white70,
                height: 1.5,
              ),
            ),

            SizedBox(height: 24),

            Divider(
              color: Colors.white24,
              thickness: 1,
            ),

            SizedBox(height: 20),

            Text(
              'RESULT',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),

            SizedBox(height: 8),

            Text(
              'Flutter and Dart SDK concepts were studied.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white70,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
