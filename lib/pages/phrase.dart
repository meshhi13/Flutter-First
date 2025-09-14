
import 'package:flutter/material.dart';

class DailyPhrasePage extends StatelessWidget {
  const DailyPhrasePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Daily Phrase!')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate back to first route when tapped.
          },
          child: const Text('Go back!'),
        ),
      ),
    );

  }
}

