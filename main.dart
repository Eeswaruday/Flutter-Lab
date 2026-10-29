import 'package:flutter/material.dart';

import 'main-exp-1a.dart';
import 'main-exp-1b.dart';
import 'main-exp-2a.dart';
import 'main-exp-2b.dart';
import 'main-exp-3a.dart';
import 'main-exp-3b.dart';
import 'main-exp-4a.dart';
import 'main-exp-4b.dart';
import 'main-exp-5a.dart';
import 'main-exp-5b.dart';
import 'main-exp-6a.dart';
import 'main-exp-6b.dart';

void main() {
  runApp(const ExperimentLauncherApp());
}

class ExperimentLauncherApp extends StatelessWidget {
  const ExperimentLauncherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Experiments Launcher',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF3949AB),
          primary: const Color(0xFF3949AB),
        ),
        scaffoldBackgroundColor: const Color(0xFFF5F7FF),
      ),
      home: const LauncherHomeScreen(),
    );
  }
}

class LauncherHomeScreen extends StatelessWidget {
  const LauncherHomeScreen({super.key});

  static const List<Map<String, dynamic>> experiments = [
    {
      'id': '1A',
      'title': 'Flutter & Dart SDK',
      'subtitle': 'AIM, Theory, and Result layout demo',
      'icon': Icons.flutter_dash,
      'color': Color(0xFF1E88E5),
      'widget': Exp1a(),
    },
    {
      'id': '1B',
      'title': 'Dart Language Basics',
      'subtitle': 'Variables, data types, and conditions',
      'icon': Icons.code_rounded,
      'color': Color(0xFF3949AB),
      'widget': Exp1b(),
    },
    {
      'id': '2A',
      'title': 'Flutter UI Widgets',
      'subtitle': 'Text, Container, Icon, Card & ListTile',
      'icon': Icons.widgets_rounded,
      'color': Color(0xFF6366F1),
      'widget': Exp2a(),
    },
    {
      'id': '2B',
      'title': 'Row, Column & Stack',
      'subtitle': 'Horizontal, vertical & overlapping layouts',
      'icon': Icons.layers_rounded,
      'color': Color(0xFF8B5CF6),
      'widget': Exp2b(),
    },
    {
      'id': '3A',
      'title': 'LayoutBuilder & Flex',
      'subtitle': 'Responsive layout adaptation',
      'icon': Icons.aspect_ratio_rounded,
      'color': Color(0xFF00897B),
      'widget': Exp3a(),
    },
    {
      'id': '3B',
      'title': 'MediaQuery & Breakpoints',
      'subtitle': 'Detect device dimensions and categories',
      'icon': Icons.devices_rounded,
      'color': Color(0xFF00ACC1),
      'widget': Exp3b(),
    },
    {
      'id': '4A',
      'title': 'Screen Navigation',
      'subtitle': 'Navigator push and pop between screens',
      'icon': Icons.screen_share_rounded,
      'color': Color(0xFF3949AB),
      'widget': Exp4a(),
    },
    {
      'id': '4B',
      'title': 'Named Route Navigation',
      'subtitle': 'Navigator pushNamed and route paths',
      'icon': Icons.alt_route_rounded,
      'color': Color(0xFF5C6BC0),
      'widget': Exp4b(),
    },
    {
      'id': '5A',
      'title': 'StatefulWidget Counter',
      'subtitle': 'Stateful counter with animated switcher',
      'icon': Icons.touch_app_rounded,
      'color': Color(0xFF00897B),
      'widget': Exp5a(),
    },
    {
      'id': '5B',
      'title': 'State Management Demo',
      'subtitle': 'setState state management explanation',
      'icon': Icons.settings_suggest_rounded,
      'color': Color(0xFF26A69A),
      'widget': Exp5b(),
    },
    {
      'id': '6A',
      'title': 'Custom Reusable Widgets',
      'subtitle': 'Modular CustomCard components',
      'icon': Icons.extension_rounded,
      'color': Color(0xFF3949AB),
      'widget': Exp6a(),
    },
    {
      'id': '6B',
      'title': 'Custom ThemeData',
      'subtitle': 'Application-wide Material 3 styling',
      'icon': Icons.palette_rounded,
      'color': Color(0xFF7E57C2),
      'widget': Exp6b(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter Experiments',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF3949AB),
        elevation: 4,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: experiments.length,
        itemBuilder: (context, index) {
          final exp = experiments[index];
          final Color expColor = exp['color'] as Color;

          return Card(
            elevation: 2,
            margin: const EdgeInsets.only(bottom: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              leading: CircleAvatar(
                radius: 24,
                backgroundColor: expColor.withValues(alpha: 0.12),
                child: Text(
                  exp['id'] as String,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: expColor,
                    fontSize: 14,
                  ),
                ),
              ),
              title: Text(
                'Exp ${exp['id']}: ${exp['title']}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              subtitle: Text(
                exp['subtitle'] as String,
                style: const TextStyle(
                  fontSize: 13,
                  color: Colors.black54,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 18,
                color: expColor,
              ),
              onTap: () {
                final Widget targetWidget = exp['widget'] as Widget;
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Scaffold(
                      body: targetWidget,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
