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
        label: "Home",
        icon: Icon(CupertinoIcons.home, size: 31),
        activeIcon: Icon(CupertinoIcons.home, size: 31),
      ),
      BottomNavigationBarItem(
        label: "Camera",
        icon: Icon(CupertinoIcons.camera, size: 31),
        activeIcon: Icon(CupertinoIcons.camera, size: 31),
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

  if (location == "/third_page") {
    return 0;
  }
  if (location == "/fourth_page") {
    return 1;
  }
  if (location == "/fifth_page") {
    return 2;
  }
  return 0;
}

void _onItemTapped(int index, BuildContext context) {
  switch (index) {
    case 0:
      GoRouter.of(context).go('/third_page');
      break;
    case 1:
      GoRouter.of(context).go('/fourth_page', extra: "Hello World");
      break;
    case 2:
      GoRouter.of(context).go('/fifth_page');
      break;
  }
}
