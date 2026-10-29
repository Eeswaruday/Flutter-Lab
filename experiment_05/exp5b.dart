import 'package:flutter/material.dart';

class Exp5b extends StatefulWidget {
  const Exp5b({super.key});

  @override
  State<Exp5b> createState() => _Exp5bState();
}

class _Exp5bState extends State<Exp5b> {
  final ValueNotifier<int> _counterNotifier = ValueNotifier<int>(0);
  final ValueNotifier<Color> _colorNotifier = ValueNotifier<Color>(const Color(0xFF38BDF8));

  @override
  void dispose() {
    _counterNotifier.dispose();
    _colorNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Experiment 5B'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Reactive State Management',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xFF38BDF8)),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 6),
            const Text(
              'ValueNotifier & ValueListenableBuilder reactive updates.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Color(0xFF94A3B8), fontSize: 13),
            ),
            const SizedBox(height: 20),

            ValueListenableBuilder<Color>(
              valueListenable: _colorNotifier,
              builder: (context, activeColor, _) {
                return ValueListenableBuilder<int>(
                  valueListenable: _counterNotifier,
                  builder: (context, countValue, _) {
                    return Card(
                      elevation: 4,
                      color: const Color(0xFF1E293B),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                        side: BorderSide(color: activeColor, width: 2),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
                        child: Column(
                          children: [
                            Text(
                              'Count: $countValue',
                              style: TextStyle(
                                fontSize: 36,
                                fontWeight: FontWeight.bold,
                                color: activeColor,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'Reactive Listener Active',
                              style: TextStyle(
                                fontSize: 13,
                                color: activeColor.withValues(alpha: 0.8),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
            const SizedBox(height: 20),

            const Text(
              'Counter Controls',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFFF8FAFC)),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton.icon(
                    icon: const Icon(Icons.remove),
                    label: const Text('Decrement'),
                    onPressed: () {
                      _counterNotifier.value--;
                    },
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton.icon(
                    icon: const Icon(Icons.add),
                    label: const Text('Increment'),
                    onPressed: () {
                      _counterNotifier.value++;
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            OutlinedButton.icon(
              icon: const Icon(Icons.refresh),
              label: const Text('Reset Counter'),
              onPressed: () {
                _counterNotifier.value = 0;
              },
            ),

            const SizedBox(height: 20),

            const Text(
              'Theme Accent Selector',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFFF8FAFC)),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ActionChip(
                  avatar: const CircleAvatar(backgroundColor: Color(0xFF38BDF8), radius: 8),
                  label: const Text('Cyan'),
                  onPressed: () => _colorNotifier.value = const Color(0xFF38BDF8),
                ),
                ActionChip(
                  avatar: const CircleAvatar(backgroundColor: Color(0xFF818CF8), radius: 8),
                  label: const Text('Indigo'),
                  onPressed: () => _colorNotifier.value = const Color(0xFF818CF8),
                ),
                ActionChip(
                  avatar: const CircleAvatar(backgroundColor: Color(0xFF34D399), radius: 8),
                  label: const Text('Emerald'),
                  onPressed: () => _colorNotifier.value = const Color(0xFF34D399),
                ),
              ],
            ),

            const SizedBox(height: 20),

            Card(
              child: const Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.info_outline, color: Color(0xFF38BDF8)),
                        SizedBox(width: 8),
                        Text(
                          'State Management Concept',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFFF8FAFC)),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text(
                      'ValueNotifier & ValueListenableBuilder allow fine-grained, reactive state management. Only the specific listening sub-widgets rebuild when notifier values change, preventing unnecessary full-screen widget rebuilds.',
                      style: TextStyle(fontSize: 13, height: 1.4, color: Color(0xFF94A3B8)),
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
