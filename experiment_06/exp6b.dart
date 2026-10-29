import 'package:flutter/material.dart';

class Exp6b extends StatefulWidget {
  const Exp6b({super.key});

  @override
  State<Exp6b> createState() => _Exp6bState();
}

class _Exp6bState extends State<Exp6b> {
  bool _isDarkModeTheme = false;
  int _buttonTapCount = 0;

  @override
  Widget build(BuildContext context) {
    // Custom ThemeData configuration
    final customTheme = ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.teal,
        brightness: _isDarkModeTheme ? Brightness.dark : Brightness.light,
      ),
      scaffoldBackgroundColor:
          _isDarkModeTheme ? const Color(0xFF122020) : const Color(0xFFF0FDF4),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.teal.shade700,
        foregroundColor: Colors.white,
        centerTitle: true,
        elevation: 2,
      ),
      cardTheme: CardThemeData(
        color: _isDarkModeTheme ? const Color(0xFF1E3030) : Colors.white,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(color: Colors.teal.shade300, width: 1.5),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.teal.shade700,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );

    return Theme(
      data: customTheme,
      child: Builder(
        builder: (context) {
          final themeData = Theme.of(context);

          return Scaffold(
            appBar: AppBar(
              title: const Text('Experiment 6B'),
            ),
            body: Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Custom Theme',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: themeData.colorScheme.primary,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      'Demonstrating custom ThemeData & component styling',
                      style: TextStyle(
                        color: themeData.colorScheme.onSurface.withValues(alpha: 0.7),
                        fontSize: 13,
                      ),
                    ),
                    const SizedBox(height: 24),

                    // Custom Styled Card
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            const Icon(Icons.palette, size: 40, color: Colors.teal),
                            const SizedBox(height: 10),
                            Text(
                              'Styled using a custom theme',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: themeData.colorScheme.onSurface,
                              ),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              'Primary Color: #${themeData.colorScheme.primary.toARGB32().toRadixString(16).substring(2).toUpperCase()}',
                              style: const TextStyle(fontSize: 12, color: Colors.teal),
                            ),
                            if (_buttonTapCount > 0) ...[
                              const Divider(height: 20),
                              Text(
                                'Button Tapped: $_buttonTapCount time(s)',
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.teal,
                                ),
                              ),
                            ],
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Custom Styled Button with Active Action
                    ElevatedButton.icon(
                      icon: const Icon(Icons.touch_app),
                      label: const Text('Custom Button'),
                      onPressed: () {
                        setState(() {
                          _buttonTapCount++;
                        });
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Custom Button pressed! Theme primary color is active. (Count: $_buttonTapCount)',
                            ),
                            duration: const Duration(seconds: 2),
                          ),
                        );
                      },
                    ),

                    const SizedBox(height: 16),

                    // Theme Mode Switch Control
                    OutlinedButton.icon(
                      icon: Icon(_isDarkModeTheme ? Icons.light_mode : Icons.dark_mode),
                      label: Text(_isDarkModeTheme ? 'Switch to Light Theme' : 'Switch to Dark Theme'),
                      onPressed: () {
                        setState(() {
                          _isDarkModeTheme = !_isDarkModeTheme;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
