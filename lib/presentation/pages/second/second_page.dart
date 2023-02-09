import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Second Page',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                /* 
                If we use go method, the first page moves on top of the first page
                If we use push, the first page moves directly to the bottom tab page

                So, go method uses the stack to move to the next page
                 */

                context.go(context.namedLocation("camera_page"));
              },
              child: const Text('Go to Bottom Navigation Page'),
            ),
          ],
        ),
      ),
    );
  }
}
