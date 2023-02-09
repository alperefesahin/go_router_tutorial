import 'package:flutter/material.dart';

class CameraPage extends StatelessWidget {
  const CameraPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Text(
          'Camera Page...',
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
    );
  }
}
