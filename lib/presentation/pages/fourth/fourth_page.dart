import 'package:flutter/material.dart';

class FourthPage extends StatelessWidget {
  const FourthPage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Text(
            'This is the fourth page, and the extra parameter is $title',
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 30, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
