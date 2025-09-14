
import 'package:flutter/material.dart';

class MemoryBoostPage extends StatelessWidget {
  const MemoryBoostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Memory Boost!')),
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