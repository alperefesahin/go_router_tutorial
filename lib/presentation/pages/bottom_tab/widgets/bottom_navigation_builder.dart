import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

Widget bottomNavigationBuilder(BuildContext context) {
  return BottomNavigationBar(
    backgroundColor: Colors.white,
    currentIndex: _calculateSelectedIndex(context),
    selectedItemColor: Colors.blue,
    onTap: (index) => _onItemTapped(index, context),
    items: const [
      BottomNavigationBarItem(
        label: "Camera",
        icon: Icon(CupertinoIcons.camera, size: 31),
        activeIcon: Icon(CupertinoIcons.camera, size: 31),
      ),
      BottomNavigationBarItem(
        label: "Home",
        icon: Icon(CupertinoIcons.home, size: 31),
        activeIcon: Icon(CupertinoIcons.home, size: 31),
      ),
      BottomNavigationBarItem(
        label: "Settings",
        icon: Icon(CupertinoIcons.settings, size: 31),
        activeIcon: Icon(CupertinoIcons.settings, size: 31),
      ),
    ],
  );
}

int _calculateSelectedIndex(BuildContext context) {
  final String location = GoRouterState.of(context).location;

  if (location == "/camera_page") {
    return 0;
  }
  if (location == "/home_page") {
    return 1;
  }
  if (location == "/settings_page") {
    return 2;
  }
  return 0;
}

void _onItemTapped(int index, BuildContext context) {
  switch (index) {
    case 0:
      GoRouter.of(context).go('/camera_page');
      break;
    case 1:
      GoRouter.of(context).go('/home_page', extra: "Hello World");
      break;
    case 2:
      GoRouter.of(context).go('/settings_page');
      break;
  }
}
