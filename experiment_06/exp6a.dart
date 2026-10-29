import 'package:flutter/material.dart';

class Exp6a extends StatelessWidget {
  const Exp6a({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Experiment 6A - Custom Cards'),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Interactive Topic Selection',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 6),
            const Text(
              'Tap any topic card below to open its dedicated information page.',
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            const SizedBox(height: 20),

            // Card 1: Flutter
            CustomCard(
              title: 'Flutter',
              subtitle: 'Google UI Toolkit for Multi-Platform',
              icon: Icons.flutter_dash,
              iconColor: Colors.blue,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const FlutterDetailPage()),
                );
              },
            ),

            // Card 2: Dart
            CustomCard(
              title: 'Dart',
              subtitle: 'Client-Optimized Programming Language',
              icon: Icons.code,
              iconColor: Colors.teal,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const DartDetailPage()),
                );
              },
            ),

            // Card 3: Widgets
            CustomCard(
              title: 'Widgets',
              subtitle: 'Core UI Building Blocks & Composition',
              icon: Icons.widgets,
              iconColor: Colors.deepPurple,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const WidgetsDetailPage()),
                );
              },
            ),

            const SizedBox(height: 24),

            // Info Note Card
            Card(
              color: Colors.deepPurple.shade50,
              elevation: 2,
              child: const Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    Icon(Icons.touch_app, color: Colors.deepPurple, size: 28),
                    SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        'Each custom card uses an explicit onTap callback that navigates directly to a dedicated details screen.',
                        style: TextStyle(fontSize: 13, height: 1.4),
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

class CustomCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final Color iconColor;
  final VoidCallback onTap;

  const CustomCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.iconColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
        side: BorderSide(color: iconColor.withValues(alpha: 0.3), width: 1.5),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        onTap: onTap,
        leading: CircleAvatar(
          backgroundColor: iconColor.withValues(alpha: 0.15),
          radius: 24,
          child: Icon(icon, size: 28, color: iconColor),
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Text(
            subtitle,
            style: const TextStyle(fontSize: 12, color: Colors.grey),
          ),
        ),
        trailing: Icon(Icons.arrow_forward_ios, size: 16, color: iconColor),
      ),
    );
  }
}

// ============================================================================
// 1. DEDICATED FLUTTER DETAILS PAGE
// ============================================================================

class FlutterDetailPage extends StatelessWidget {
  const FlutterDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Details'),
        backgroundColor: Colors.blue.shade100,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title Header
            Row(
              children: [
                Icon(Icons.flutter_dash, size: 40, color: Colors.blue.shade700),
                const SizedBox(width: 12),
                const Text(
                  'Flutter Framework',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue),
                ),
              ],
            ),
            const Divider(height: 24),

            // Introduction Section
            _buildSectionHeader(Icons.info, '1. Topic Introduction'),
            const SizedBox(height: 8),
            const Text(
              'Flutter is an open-source UI software development kit created by Google. '
              'It allows developers to build beautiful, natively compiled, multi-platform applications '
              'for Android, iOS, Web, Windows, macOS, and Linux from a single codebase.',
              style: TextStyle(fontSize: 14, height: 1.5),
            ),
            const SizedBox(height: 20),

            // Key Concepts Section
            _buildSectionHeader(Icons.star, '2. Key Concepts & Benefits'),
            const SizedBox(height: 8),
            _buildBulletPoint('Single Codebase', 'Write business logic and UI once, compile everywhere.'),
            _buildBulletPoint('Hot Reload', 'Sub-second stateful code updates without restarting app state.'),
            _buildBulletPoint('Native Performance', 'Compiles directly to native ARM / x86 machine code via Impeller/Skia.'),
            _buildBulletPoint('Rich Widget Catalog', 'Extensive set of Material Design and Cupertino UI widgets.'),
            const SizedBox(height: 20),

            // Practical Code Example
            _buildSectionHeader(Icons.code, '3. Code Example'),
            const SizedBox(height: 8),
            _buildCodeSnippet(
              "import 'package:flutter/material.dart';\n\n"
              "void main() => runApp(const MyApp());\n\n"
              "class MyApp extends StatelessWidget {\n"
              "  const MyApp({super.key});\n\n"
              "  @override\n"
              "  Widget build(BuildContext context) {\n"
              "    return const MaterialApp(\n"
              "      home: Scaffold(\n"
              "        body: Center(child: Text('Hello Flutter!')),\n"
              "      ),\n"
              "    );\n"
              "  }\n"
              "}",
            ),
            const SizedBox(height: 20),

            // Code Explanation
            _buildSectionHeader(Icons.lightbulb, '4. Explanation of Example'),
            const SizedBox(height: 8),
            const Text(
              '• runApp() attaches the root widget to the device screen.\n'
              '• MaterialApp configures global Material design theming.\n'
              '• Scaffold provides standard app bar and body layout structure.\n'
              '• Center and Text widgets display centered string output.',
              style: TextStyle(fontSize: 14, height: 1.5),
            ),
            const SizedBox(height: 20),

            // Important Points
            _buildSectionHeader(Icons.check_circle, '5. Important Points to Remember'),
            const SizedBox(height: 8),
            const Card(
              color: Color(0xFFE3F2FD),
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                  '✔ Everything in Flutter is a widget.\n'
                  '✔ Declarative UI paradigm: UI = f(state).\n'
                  '✔ High FPS rendering pipeline powered by native compilation.',
                  style: TextStyle(fontSize: 13, height: 1.5, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ============================================================================
// 2. DEDICATED DART DETAILS PAGE
// ============================================================================

class DartDetailPage extends StatelessWidget {
  const DartDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dart Details'),
        backgroundColor: Colors.teal.shade100,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title Header
            Row(
              children: [
                Icon(Icons.code, size: 40, color: Colors.teal.shade700),
                const SizedBox(width: 12),
                const Text(
                  'Dart Language',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.teal),
                ),
              ],
            ),
            const Divider(height: 24),

            // Introduction Section
            _buildSectionHeader(Icons.info, '1. Topic Introduction'),
            const SizedBox(height: 8),
            const Text(
              'Dart is a client-optimized, object-oriented, class-based programming language developed by Google. '
              'It is designed for fast, multi-platform development and powers the reactive framework underlying Flutter applications.',
              style: TextStyle(fontSize: 14, height: 1.5),
            ),
            const SizedBox(height: 20),

            // Key Concepts Section
            _buildSectionHeader(Icons.star, '2. Key Concepts & Features'),
            const SizedBox(height: 8),
            _buildBulletPoint('Variables & Types', 'Supports int, double, String, bool, List, and Map with strong typing.'),
            _buildBulletPoint('Sound Null Safety', 'Prevents null reference exceptions at compile-time.'),
            _buildBulletPoint('Object-Oriented', 'Supports classes, mixins, abstract interfaces, and generics.'),
            _buildBulletPoint('Async / Streams', 'Handles asynchronous operations using Future, async/await, and Stream.'),
            const SizedBox(height: 20),

            // Practical Code Example
            _buildSectionHeader(Icons.code, '3. Code Example'),
            const SizedBox(height: 8),
            _buildCodeSnippet(
              "class Student {\n"
              "  final String name;\n"
              "  final double score;\n\n"
              "  Student(this.name, this.score);\n\n"
              "  bool get isPassed => score >= 50.0;\n"
              "}\n\n"
              "void main() {\n"
              "  final student = Student('Alex', 88.5);\n"
              "  print('\${student.name} passed: \${student.isPassed}');\n"
              "}",
            ),
            const SizedBox(height: 20),

            // Code Explanation
            _buildSectionHeader(Icons.lightbulb, '4. Explanation of Example'),
            const SizedBox(height: 8),
            const Text(
              '• Student class encapsulates fields (name, score) with a concise constructor.\n'
              '• isPassed getter computes a boolean result based on the score threshold.\n'
              '• main() instantiates the object and prints output using string interpolation.',
              style: TextStyle(fontSize: 14, height: 1.5),
            ),
            const SizedBox(height: 20),

            // Important Points
            _buildSectionHeader(Icons.check_circle, '5. Important Points to Remember'),
            const SizedBox(height: 8),
            const Card(
              color: Color(0xFFE0F2F1),
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                  '✔ Dart compiles to JIT during development and AOT for production.\n'
                  '✔ All variables are objects inheriting from Object.\n'
                  '✔ Null safety eliminates null dereference runtime crashes.',
                  style: TextStyle(fontSize: 13, height: 1.5, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ============================================================================
// 3. DEDICATED WIDGETS DETAILS PAGE
// ============================================================================

class WidgetsDetailPage extends StatelessWidget {
  const WidgetsDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widgets Details'),
        backgroundColor: Colors.deepPurple.shade100,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title Header
            Row(
              children: [
                Icon(Icons.widgets, size: 40, color: Colors.deepPurple.shade700),
                const SizedBox(width: 12),
                const Text(
                  'Flutter Widgets',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.deepPurple),
                ),
              ],
            ),
            const Divider(height: 24),

            // Introduction Section
            _buildSectionHeader(Icons.info, '1. Topic Introduction'),
            const SizedBox(height: 8),
            const Text(
              'In Flutter, "Everything is a Widget". A widget is an immutable description of a part of a user interface. '
              'From structural layout containers (Row, Column, Stack) to visual components (Text, Image, Icon), '
              'widgets compose the complete UI visual tree.',
              style: TextStyle(fontSize: 14, height: 1.5),
            ),
            const SizedBox(height: 20),

            // Key Concepts Section
            _buildSectionHeader(Icons.star, '2. Key Concepts & Categories'),
            const SizedBox(height: 8),
            _buildBulletPoint('StatelessWidget', 'Immutable UI that does not change over time based on internal state.'),
            _buildBulletPoint('StatefulWidget', 'Maintains mutable State object that updates UI dynamically via setState().'),
            _buildBulletPoint('Layout Widgets', 'Row, Column, Container, Flex, and Stack structure element positioning.'),
            _buildBulletPoint('Interactive Widgets', 'ElevatedButton, TextFormField, and GestureDetector handle touch inputs.'),
            const SizedBox(height: 20),

            // Practical Code Example
            _buildSectionHeader(Icons.code, '3. Code Example'),
            const SizedBox(height: 8),
            _buildCodeSnippet(
              "class CounterWidget extends StatefulWidget {\n"
              "  const CounterWidget({super.key});\n\n"
              "  @override\n"
              "  State<CounterWidget> createState() => _CounterWidgetState();\n"
              "}\n\n"
              "class _CounterWidgetState extends State<CounterWidget> {\n"
              "  int _count = 0;\n\n"
              "  @override\n"
              "  Widget build(BuildContext context) {\n"
              "    return Column(\n"
              "      children: [\n"
              "        Text('Count: \$_count'),\n"
              "        ElevatedButton(\n"
              "          onPressed: () => setState(() => _count++),\n"
              "          child: const Text('Increment'),\n"
              "        ),\n"
              "      ],\n"
              "    );\n"
              "  }\n"
              "}",
            ),
            const SizedBox(height: 20),

            // Code Explanation
            _buildSectionHeader(Icons.lightbulb, '4. Explanation of Example'),
            const SizedBox(height: 8),
            const Text(
              '• CounterWidget extends StatefulWidget to maintain dynamic state.\n'
              '• _count variable holds current integer counter value.\n'
              '• calling setState() informs framework to rebuild UI with updated _count.',
              style: TextStyle(fontSize: 14, height: 1.5),
            ),
            const SizedBox(height: 20),

            // Important Points
            _buildSectionHeader(Icons.check_circle, '5. Important Points to Remember'),
            const SizedBox(height: 8),
            const Card(
              color: Color(0xFFEDE7F6),
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                  '✔ Widgets are lightweight configuration objects.\n'
                  '✔ Flutter prefers composition over inheritance.\n'
                  '✔ Use StatelessWidget whenever dynamic state mutation is not required.',
                  style: TextStyle(fontSize: 13, height: 1.5, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ============================================================================
// HELPER WIDGET BUILDERS
// ============================================================================

Widget _buildSectionHeader(IconData icon, String title) {
  return Row(
    children: [
      Icon(icon, size: 20, color: Colors.blueGrey.shade700),
      const SizedBox(width: 8),
      Text(
        title,
        style: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.bold,
          color: Colors.blueGrey.shade900,
        ),
      ),
    ],
  );
}

Widget _buildBulletPoint(String label, String detail) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 6),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('• ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: const TextStyle(fontSize: 14, color: Colors.black87, height: 1.4),
              children: [
                TextSpan(text: '$label: ', style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: detail),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _buildCodeSnippet(String code) {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.all(14),
    decoration: BoxDecoration(
      color: Colors.blueGrey.shade900,
      borderRadius: BorderRadius.circular(10),
    ),
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Text(
        code,
        style: const TextStyle(
          fontFamily: 'monospace',
          fontSize: 13,
          color: Colors.lightGreenAccent,
          height: 1.4,
        ),
      ),
    ),
  );
}
