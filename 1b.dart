import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Exp1b(),
    ),
  );
}

class Exp1b extends StatelessWidget {
const Exp1b({super.key});

@override
Widget build(BuildContext context) {
final int age = 20;
final String name = 'Student';
final double marks = 85.5;
final bool passed = true;

return Scaffold(
backgroundColor: Colors.black,

appBar: AppBar(
title: const Text(
'Experiment 1B',
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

body: Padding(
padding: const EdgeInsets.all(20),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
const Text(
'Dart Language Basics',
style: TextStyle(
fontSize: 24,
fontWeight: FontWeight.bold,
color: Colors.white,
),
),

const SizedBox(height: 20),

Text(
'Name: $name',
style: const TextStyle(
fontSize: 16,
color: Colors.white70,
),
),

const SizedBox(height: 10),

Text(
'Age: $age',
style: const TextStyle(
fontSize: 16,
color: Colors.white70,
),
),

const SizedBox(height: 10),

Text(
'Marks: $marks',
style: const TextStyle(
fontSize: 16,
color: Colors.white70,
),
),

const SizedBox(height: 10),

Text(
'Passed: $passed',
style: const TextStyle(
fontSize: 16,
fontWeight: FontWeight.bold,
color: Colors.white,
),
),

const SizedBox(height: 24),

const Divider(
color: Colors.white24,
thickness: 1,
),

const SizedBox(height: 16),

const Text(
'RESULT',
style: TextStyle(
fontSize: 16,
fontWeight: FontWeight.bold,
color: Colors.white,
),
),

const SizedBox(height: 8),

const Text(
'Dart variables and data types were studied.',
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
