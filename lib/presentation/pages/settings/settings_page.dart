import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Center(
        child: Text(
          'Settings page...',
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
    );
  }
}
