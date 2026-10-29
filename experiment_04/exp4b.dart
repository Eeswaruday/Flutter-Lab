import 'package:flutter/material.dart';

class Exp4b extends StatelessWidget {
  const Exp4b({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings) {
        WidgetBuilder builder;
        switch (settings.name) {
          case '/':
            builder = (BuildContext context) => const Exp4bHomeScreen();
            break;
          case '/details':
            builder = (BuildContext context) => const Exp4bDetailsScreen();
            break;
          default:
            builder = (BuildContext context) => const Exp4bHomeScreen();
        }
        return MaterialPageRoute(
          builder: builder,
          settings: settings,
        );
      },
    );
  }
}

class Exp4bHomeScreen extends StatelessWidget {
  const Exp4bHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Experiment 4B - Named Routes'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Header Card
            Card(
              elevation: 3,
              child: const Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.route, color: Color(0xFF38BDF8), size: 28),
                        SizedBox(width: 10),
                        Text(
                          'Experiment 4B',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF38BDF8),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 6),
                    Text(
                      'Title: Navigation with Named Routes',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFF8FAFC),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),

            // Aim Card
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Row(
                      children: [
                        Icon(Icons.center_focus_strong, color: Color(0xFF818CF8)),
                        SizedBox(width: 8),
                        Text(
                          'Aim',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text(
                      'To understand and implement multi-screen application navigation in Flutter using named routes defined in a route map or route generator.',
                      style: TextStyle(fontSize: 14, height: 1.4, color: Color(0xFF94A3B8)),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),

            // Description & Concepts Card
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Row(
                      children: [
                        Icon(Icons.description, color: Color(0xFF38BDF8)),
                        SizedBox(width: 8),
                        Text(
                          'Description & Concepts',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Named routes provide a centralized and structured method to manage screen transitions using string identifiers like "/" and "/details".',
                      style: TextStyle(fontSize: 14, height: 1.4, color: Color(0xFF94A3B8)),
                    ),
                    SizedBox(height: 12),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: [
                        Chip(
                          avatar: Icon(Icons.check, size: 16, color: Color(0xFF38BDF8)),
                          label: Text('MaterialApp / Navigator'),
                        ),
                        Chip(
                          avatar: Icon(Icons.check, size: 16, color: Color(0xFF38BDF8)),
                          label: Text('Named Routes'),
                        ),
                        Chip(
                          avatar: Icon(Icons.check, size: 16, color: Color(0xFF38BDF8)),
                          label: Text('Navigator.pushNamed()'),
                        ),
                        Chip(
                          avatar: Icon(Icons.check, size: 16, color: Color(0xFF38BDF8)),
                          label: Text('Navigator.pop()'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),

            // Route Information Card
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
                side: const BorderSide(color: Color(0xFF38BDF8), width: 1.5),
              ),
              child: const Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.alt_route, color: Color(0xFF38BDF8)),
                        SizedBox(width: 8),
                        Text(
                          'Route Information',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF38BDF8),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text('• Home Route: /', style: TextStyle(color: Color(0xFFF8FAFC))),
                    Text('• Details Route: /details', style: TextStyle(color: Color(0xFFF8FAFC))),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),

            // Procedure Card
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Row(
                      children: [
                        Icon(Icons.format_list_numbered, color: Color(0xFFFBBF24)),
                        SizedBox(width: 8),
                        Text(
                          'Procedure',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text('1. Define string route identifiers ("/" and "/details").', style: TextStyle(color: Color(0xFF94A3B8))),
                    Text('2. Register routes in the Navigator route configuration.', style: TextStyle(color: Color(0xFF94A3B8))),
                    Text('3. Invoke Navigator.pushNamed(context, "/details").', style: TextStyle(color: Color(0xFF94A3B8))),
                    Text('4. Return using Navigator.pop(context).', style: TextStyle(color: Color(0xFF94A3B8))),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),

            // Result Card
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
                    Icon(Icons.check_circle, color: Color(0xFF34D399), size: 28),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Result',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF34D399),
                            ),
                          ),
                          SizedBox(height: 2),
                          Text(
                            'Named route navigation architecture is configured and ready.',
                            style: TextStyle(fontSize: 13, color: Color(0xFF34D399)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Navigation Button
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
                backgroundColor: const Color(0xFF0284C7),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              icon: const Icon(Icons.open_in_new),
              label: const Text(
                'Open Details Page',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/details');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Exp4bDetailsScreen extends StatelessWidget {
  const Exp4bDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Experiment 4B Details'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Details Header Card
            Card(
              elevation: 3,
              child: const Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.analytics, color: Color(0xFF38BDF8), size: 28),
                        SizedBox(width: 10),
                        Text(
                          'Experiment 4B',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF38BDF8),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 6),
                    Text(
                      'Details Screen',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFF8FAFC),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),

            // Aim Card
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Row(
                      children: [
                        Icon(Icons.flag, color: Color(0xFF818CF8)),
                        SizedBox(width: 8),
                        Text(
                          'Aim',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text(
                      'To implement navigation between different screens using named routes.',
                      style: TextStyle(fontSize: 14, height: 1.4, color: Color(0xFF94A3B8)),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),

            // Key Technologies & Features
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Row(
                      children: [
                        Icon(Icons.layers, color: Color(0xFF38BDF8)),
                        SizedBox(width: 8),
                        Text(
                          'Key Concepts & APIs',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    ListTile(
                      dense: true,
                      leading: Icon(Icons.check_circle_outline, color: Color(0xFF34D399)),
                      title: Text('Flutter MaterialApp'),
                      subtitle: Text('Provides core top-level navigation context.', style: TextStyle(color: Color(0xFF94A3B8))),
                    ),
                    ListTile(
                      dense: true,
                      leading: Icon(Icons.check_circle_outline, color: Color(0xFF34D399)),
                      title: Text('Named Routes'),
                      subtitle: Text('Decouples screen instantiation from trigger logic.', style: TextStyle(color: Color(0xFF94A3B8))),
                    ),
                    ListTile(
                      dense: true,
                      leading: Icon(Icons.check_circle_outline, color: Color(0xFF34D399)),
                      title: Text('Navigator.pushNamed()'),
                      subtitle: Text('Pushes a new route onto the stack by name.', style: TextStyle(color: Color(0xFF94A3B8))),
                    ),
                    ListTile(
                      dense: true,
                      leading: Icon(Icons.check_circle_outline, color: Color(0xFF34D399)),
                      title: Text('Route Map: / and /details'),
                      subtitle: Text('Home Route: /  |  Details Route: /details', style: TextStyle(color: Color(0xFF94A3B8))),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),

            // Step-by-Step Procedure Card
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Row(
                      children: [
                        Icon(Icons.account_tree, color: Color(0xFF818CF8)),
                        SizedBox(width: 8),
                        Text(
                          'Step-by-step Procedure',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text('1. Set initialRoute to "/" in the Navigator configuration.', style: TextStyle(color: Color(0xFF94A3B8))),
                    SizedBox(height: 4),
                    Text('2. Map "/" to Exp4bHomeScreen and "/details" to Exp4bDetailsScreen.', style: TextStyle(color: Color(0xFF94A3B8))),
                    SizedBox(height: 4),
                    Text('3. Call Navigator.pushNamed(context, "/details") on button tap.', style: TextStyle(color: Color(0xFF94A3B8))),
                    SizedBox(height: 4),
                    Text('4. Return using Navigator.pop(context) or popUntil.', style: TextStyle(color: Color(0xFF94A3B8))),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),

            // Final Result Card
            Card(
              color: const Color(0xFF102A24),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: const BorderSide(color: Color(0xFF34D399), width: 1),
              ),
              child: const Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.verified, color: Color(0xFF34D399), size: 28),
                        SizedBox(width: 10),
                        Text(
                          'Final Result',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF34D399),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Successfully navigated to Details Screen via named route "/details". Named route navigation and back navigation fully verified.',
                      style: TextStyle(fontSize: 14, height: 1.4, color: Color(0xFF34D399)),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Action Buttons
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 14),
                backgroundColor: const Color(0xFF0284C7),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              icon: const Icon(Icons.arrow_back),
              label: const Text(
                'Go Back',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            const SizedBox(height: 10),
            OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              icon: const Icon(Icons.home),
              label: const Text(
                'Back to Home',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                Navigator.popUntil(context, ModalRoute.withName('/'));
              },
            ),
          ],
        ),
      ),
    );
  }
}
