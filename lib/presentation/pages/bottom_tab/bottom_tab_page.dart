import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_tutorial/presentation/pages/bottom_tab/widgets/bottom_navigation_builder.dart';

class BottomTabPage extends StatelessWidget {
  const BottomTabPage({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Navigation Page'),
        actions: [
          IconButton(
            icon: const Icon(Icons.exit_to_app),
            onPressed: () {
              context.go(context.namedLocation("/"));
            },
          ),
        ],
      ),
      bottomNavigationBar: bottomNavigationBuilder(context),
      body: child,
    );
  }
}
