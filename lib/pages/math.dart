import 'package:flutter/material.dart';

class NumbersFunPage extends StatelessWidget {
  const NumbersFunPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Numbers Fun!')),
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